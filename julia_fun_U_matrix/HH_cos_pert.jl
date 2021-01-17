__precompile__(true)

module HH_cos_pert

export pow, V2, dV2, ddV2, V1, dV1,ddV1, rhodustfun, rhodustcfun, constraint_fun, constraint_fun_ave, HHijfun, HHijfuni, backeomfun!, backeomcfun!, backeom_average!, HHfun!,HHfun_ave!;

if(!(@isdefined Main.lamphi))
    const lamphi=1;
else
    const lamphi=Main.lamphi
end

if(!(@isdefined Main.preDef))
    const preDef=BigFloats;
else
    preDef=Main.preDef;
end 

pow(x,y)=x^y;

V1(x,paras)=0.;
dV1(x,paras)=0.;
ddV1(x,paras)=0.;

function V2(x,paras)
    ms=paras[6];kappa=paras[4];
    return 3*ms^2/(2*kappa)*(1-exp(-sqrt(kappa/3)*x))^2
end
function dV2(x,paras)
    ms=paras[6];kappa=paras[4];
    return sqrt(3/kappa)*ms^2*exp(-sqrt(kappa/3)*x)*(1-exp(-sqrt(kappa/3)*x))
end
function ddV2(x,paras)
    ms=paras[6];kappa=paras[4];
    ms^2*exp(-2*sqrt(kappa/3)*x)*(2-exp(sqrt(kappa/3)*x))
end

function rhodustfun(vars,VVt,paras)
 v,b0,Phi,gPi=vars; 
 V1t,V2t=VVt; 
 lambda, beta, alpha, kappa, Clambda=paras;
  return -((2*Clambda + (V1t + V2t)*kappa*lamphi)*pow(kappa, -1)) - (lamphi*pow(v, -2)*pow(gPi, 2))/2 + 3*pow(beta, -2)*(1 - pow(beta, 2) + cos(2*b0*beta*lambda)*(1 + pow(beta, 2)))*pow(kappa, -1)*pow(lambda, -2)*pow(sin(b0*beta*lambda), 2) 
end 

function rhodustfun(vars,V1t,V2t,paras)
 v,b0,Phi,gPi=vars; 
 lambda, beta, alpha, kappa, Clambda=paras;
  return -((2*Clambda + (V1t + V2t)*kappa*lamphi)*pow(kappa, -1)) - (lamphi*pow(v, -2)*pow(gPi, 2))/2 + 3*pow(beta, -2)*(1 - pow(beta, 2) + cos(2*b0*beta*lambda)*(1 + pow(beta, 2)))*pow(kappa, -1)*pow(lambda, -2)*pow(sin(b0*beta*lambda), 2) 
end 

function rhodustcfun(vars,VVt,paras)
 v,b0,Phi,gPi=vars; 
 V1t,V2t=VVt; 
 lambda, beta, alpha, kappa, Clambda=paras;
  return (-((V1t + V2t)*kappa) - 2*Clambda + 6*pow(b0, 2))*pow(kappa, -1) - (pow(v, -2)*pow(gPi, 2))/2 
 end 

include("HHijfun_st.jl");
include("HHijfun_sn1.jl");
include("backfun.jl");
include("HHijcfun_sn.jl");
include("invariant_functions.jl");
include("invariant_function_matrix_n.jl");
include("invariant_functionc_matrix_n.jl");

function backeomcfun!(dvars,vars,paras,t) 
    v,b0,Phi,gPi=vars; 
   lambda, beta, alpha, kappa, Clambda =paras;  
      dvars .= [3*b0*v, -(12*b0^2*v^2 - 4*v^2*Clambda + kappa*gPi^2 - 2*v^2*kappa*(V1(Phi,paras)+V2(Phi,paras) ) )/(8*v^2), 
    gPi/v,  -(v*(dV1(Phi, paras) + dV2(Phi, paras)))];
end

function backeom_average!(du,u,paras_m,t)
	paras_ave=similar(paras_m[1]);
    paras_ave.=paras_m[1];
    sol_back0=paras_m[2]
    paras_ave[1]=2*paras_m[1][1]/(sol_back0(t)[1])^(1/3)*u[1]^(1/3);
	backeomfun!(du,u,paras_ave,t);
    return nothing;
end

function constraint_fun_ave(leftm,var,min_var,paras,paras_ave)
    paras_ave.=paras;
    paras_ave[1]=2*paras[1]/((min_var[1])^(1/3))*var[1]^(1/3);
	constraint_fun(leftm,var,paras_ave);
    return nothing;
end

function HHfun!(vars,dvar,paras,tmp,VVt,cslist_tmp,parallel=false)
    Phi=vars[3];
    VVt[1]=V1(Phi,paras);
    VVt[2]=V2(Phi,paras);
    VVt[3]=dV1(Phi,paras);
    VVt[4]=dV2(Phi,paras);
    VVt[5]=ddV1(Phi,paras);
    VVt[6]=ddV2(Phi,paras);
    HH_cos_pert.calcslist(vars,paras,cslist_tmp);
    rhodustv=rhodustfun(vars,VVt[1],VVt[2],paras);
    symbolname=Symbol("HHijfun",1);
    f_define=getproperty(HH_cos_pert,symbolname);
    if(parallel=true)
        Threads.@threads for i =1:400
            tmp[i]= getproperty(HH_cos_pert,Symbol("HHijfun",i))(vars,dvar,rhodustv,cslist_tmp,VVt,paras);
         end
    else
        for i =1:400
            symbolname=Symbol("HHijfun",i);
            f_define=getproperty(HH_cos_pert,symbolname);
            tmp[i]= f_define(vars,dvar,rhodustv,cslist_tmp,VVt,paras);
         end
    end
    return nothing;
end

function HHfun_ave!(paras,t,sol_fun,dsol_fun,sol_fun_min,VVt,tmp,paras_ave_tmp,cslist_tmp)
    paras_ave_tmp.=paras;
    paras_ave_tmp[1]=2*paras[1]/((sol_fun_min(t)[1])^(1/3))*sol_fun(t)[1]^(1/3);
	HHfun_new!(sol_fun(t),dsol_fun(t),paras_ave_tmp,tmp,VVt,cslist_tmp);
    nothing
end

function HHijfun(index,backvar,dbackvar,VVt,paras)
    i=index[1]*20+index[2];
    return getproperty(HH_cos_pert,Symbol("HHijfun",i))(backvar,dbackvar,VVt,paras);
end

function HHijfuni(i,backvar,dbackvar,VVt,paras)
    return getproperty(HH_cos_pert,Symbol("HHijfun",i))(backvar,dbackvar,VVt,paras);
end

function __init__()
end

end