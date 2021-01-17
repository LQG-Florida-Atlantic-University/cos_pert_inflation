### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# ╔═╡ 8a3ed4c6-58e7-11eb-3fec-11225371a961
push!(LOAD_PATH, "./julia_fun_U_matrix/");

# ╔═╡ bf01ae1c-244a-11eb-38c3-cd2fc304078e
using Match;

# ╔═╡ e94bce6e-244a-11eb-3982-e91b9df5113a
using Plots;

# ╔═╡ e96098c6-244a-11eb-081d-cf9c411577ea
using DifferentialEquations;

# ╔═╡ e9749fce-244a-11eb-0077-63a7bdff2b95
using ForwardDiff;

# ╔═╡ e9891a38-244a-11eb-173b-9fbd6f76fd31
using Roots;

# ╔═╡ e99ea5c6-244a-11eb-1146-051bf16e5bcd
using LinearAlgebra

# ╔═╡ e9b2ad50-244a-11eb-2911-834ce9df606c
using DoubleFloats

# ╔═╡ e9c6c0c4-244a-11eb-3151-f15b3b1a0f56
using GLM,DataFrames

# ╔═╡ 44d0f97c-2461-11eb-36de-05836e748f5d
begin
	using ProgressMeter
	using Logging: global_logger
	using TerminalLoggers: TerminalLogger
	global_logger(TerminalLogger())
end

# ╔═╡ acc54e58-58f1-11eb-317d-a131de0b6da0
using HH_cos_pert

# ╔═╡ 2525845e-5900-11eb-34ef-2995bcb30432
include("./julia_fun_U_matrix/parameters.jl");

# ╔═╡ 218661f8-244c-11eb-359f-3dc89bf9b72d
md"Loading Packages"

# ╔═╡ 1c5df0a6-244c-11eb-24c1-8f67b84d6814
plotly()

# ╔═╡ 8aad6f94-58e7-11eb-2ed3-f39873f9fa3f
setprecision(BigFloat,256);

# ╔═╡ 77d80576-58e9-11eb-3298-f5c2c4d87fb0
const lamphi = 1

# ╔═╡ 7e83f146-58e9-11eb-0d75-dda04bdd3be5
const preDef=BigFloat

# ╔═╡ 8aabdaee-58e7-11eb-2e3b-8557a043d4c9


# ╔═╡ 7623b2e0-5900-11eb-16e7-a7ae912f2343
md"v, b0, Phi, Pi = vars

lambda beta alpha kappa Clambda ms k= paras

V1t, V2t, dV1t, dV2t,ddV1t,ddV2t = VVt
"

# ╔═╡ 407a27dc-5900-11eb-172e-e1c387153ba5
paras_bk=preDef.([sqrt(16*pi),0.001,1,16*pi,0,parameters2[1],10^(-6)]);

# ╔═╡ 4fb2cf4c-5900-11eb-1033-01ccc6d1e427
paras_g=preDef.([sqrt(16*pi),0.001,0,16*pi,0,parameters2[1],10^(-6)]);

# ╔═╡ c31f96ea-58f1-11eb-1ab0-c1b39315c5aa
md"# test and usage of functions"

# ╔═╡ 75bf170c-5902-11eb-178e-91b9155e9a9e


# ╔═╡ ac0c145e-58fd-11eb-1adf-c77543227399
begin
	var_bg=preDef.(ones(4));
	dvar_bg=preDef.(ones(4));
	cslist_tmp=preDef.(ones(45));
	tmp=im*preDef.(ones(20,20));
	tmpc=similar(tmp);
	VVt6=preDef.(zeros(6));
	VVt7=preDef.(zeros(7));
	backvar_tmp1=preDef.(ones(4));
	backvar_tmp2=preDef.(ones(4));
	var_pert=im*preDef.(ones(20));
	dvar_pert=im*preDef.(ones(20));
	paras_tmp=preDef.(ones(7));
	paras_ave_tmp=preDef.(ones(7));
	md"Here we define some variabels for allocation purpoes"
end

# ╔═╡ ab22575c-5901-11eb-13fd-cba5f092f9f4
md"This is the calculation of 20-by-20 matrix $H_{ij}$, where the result is stored in tmp, whose value can be seen in the pic"

# ╔═╡ e3b880ac-58ff-11eb-1b24-e7bcdbf0eba6
HHfun!(var_bg,dvar_bg,paras_g,tmp,VVt6,cslist_tmp,false)

# ╔═╡ 555fb00a-5901-11eb-16e3-93d5c5acf7e9
plot(spy(abs.(tmp)),marker = (:hexagon, 12, 0.6, stroke(3, 0.2, :black, :dot)))

# ╔═╡ b1c507de-5902-11eb-2446-9397b9b6a3a4
md"Below are functions for vector and scalar constraints and closure condition up to 1st order, given as 7 dim array : [vector, scalar, closure]"

# ╔═╡ 42f82aa2-5902-11eb-1f71-55cc36ebec46
function eva_constrant_sol_pert(paras,varbg,varpert)
		    leftm1=im*preDef.(zeros(7,20));
	constraint_fun(leftm1,varbg,paras);
	return leftm1*varpert;
end

# ╔═╡ 91e20baa-5903-11eb-2b87-37c6b3934dcb
eva_constrant_sol_pert(t,paras,sol_fun,solpert_fun)=eva_constrant_sol_pert(paras,sol_fun(t),solpert_fun(t))

# ╔═╡ ae3fc658-5902-11eb-2a72-37b379d8b63f
function eva_constrant_sol_pert_ave(paras,varbg,varbg_ave,varpert)
		    leftm1=im*preDef.(zeros(7,20));
	constraint_fun_ave(leftm1,varbg_ave,varbg,paras,paras_ave_tmp);
	return leftm1*varpert;
end

# ╔═╡ 82762c78-5903-11eb-35ef-e9a0694146bf
eva_constrant_sol_pert_ave(t,paras,solmin_fun,solave_fun,solpert_fun)=eva_constrant_sol_pert(paras,solmin_fun(t),solave_fun(t),solpert_fun(t))

# ╔═╡ 3c322ece-5906-11eb-1216-11abe6fdda1f
md" function for calculating perturbed dust density"

# ╔═╡ 39bc6b8c-5906-11eb-2394-312f351741d9
function cal_rhodust_fun(t,paras_new)
    paras=paras_new[1];
	sol1_fun,dsol1_fun,ddsol1_fun=paras_new[2];
backvar=(sol1_fun(t));
Phi=backvar[3];       VVt=([V1(Phi,paras1),V2(Phi,paras1),dV1(Phi,paras1),dV2(Phi,paras1),ddV1(Phi,paras1),ddV2(Phi,paras1)]);
rhodustfun(backvar,VVt,paras1)
end

# ╔═╡ 3eed963c-5906-11eb-18b1-5dbd76f9e4ef
function cal_rhodustc_fun(t,paras_new)
    paras=paras_new[1];
	sol1_fun,dsol1_fun,ddsol1_fun=paras_new[2];
backvar=(sol1_fun(t));
Phi=backvar[3];       VVt=([V1(Phi,paras1),V2(Phi,paras1),dV1(Phi,paras1),dV2(Phi,paras1),ddV1(Phi,paras1),ddV2(Phi,paras1)]);
rhodustcfun(backvar,VVt,paras1)
end

# ╔═╡ 90987642-2449-11eb-3267-db1d275eb514
md"# Define and Loading functions"

# ╔═╡ 260bd22c-244b-11eb-10f4-2934f48ed48c
md"# my title"

# ╔═╡ 9ad79028-5902-11eb-374e-7b517f1e7ccd
md"# Backgroud EoMs"

# ╔═╡ 170da384-5904-11eb-1ba9-99f90c83b476
md"Define initial values"

# ╔═╡ ed585cd8-244b-11eb-210a-31d47d529b9d
function find_background_ini(b0,Hstar,paras)
    lambda,beta,alpha,kappa,Clambda=paras; 
    4*Hstar*beta*lambda+2*beta^2*sin(2*beta*lambda*b0)-(1+beta^2)*sin(4*beta*lambda*b0)
end

# ╔═╡ eff87490-244c-11eb-3c60-ef83b18c8354
b0ini=find_zero(x->find_background_ini(x,parameters2[2],paras_g),parameters2[2]);

# ╔═╡ f00d0086-244c-11eb-05e1-55b91491587e
varini=parse.(preDef,string.([1,1.21*10^(-6),parameters2[3],parameters2[4]*1]))

# ╔═╡ 4a3cb00e-5904-11eb-2e9b-93017324fc54
md"Define the ODE problem for mininum danymics"

# ╔═╡ f24c5d5c-244b-11eb-0f33-6b77764a58db
backode=ODEProblem(backeomfun!,varini,(0.0,-3.0*10^6),paras_g)

# ╔═╡ 083c5990-244d-11eb-28c0-f70dc2e6e92b
solback=solve(backode,reltol=1e-28,abstol=1e-28,Vern9(),progress=true,maxiters=1e5);

# ╔═╡ 2a72a87e-2453-11eb-0056-fbcc7cc117a4
begin
	sol=t->solback(t);
	dsol=t->ForwardDiff.derivative(solback,t);
	ddsol=t->ForwardDiff.derivative(dsolback,t);
end

# ╔═╡ c630afbe-5904-11eb-289c-af72067e1606
begin
	backode_late=ODEProblem(backeomfun!,varini,(0.0,5.0*10^7),paras_g);
	solback_late=solve(backode_late,reltol=1e-28,abstol=1e-28,Vern9(),progress=true,maxiters=1e5);
end

# ╔═╡ dbfee5c2-5904-11eb-3ee3-858effd562f7
begin
	solall=t->t>0 ? solback_late(t) : solback(t);
	dsolall=t->ForwardDiff.derivative(solall,t);
	ddsolall=t->ForwardDiff.derivative(dsolall,t);
end

# ╔═╡ 69c33472-245c-11eb-04c7-fb5055f90ea0
tbounce=find_zeros(x->(dsol(x)[1]),solback.t[end],0)[1]

# ╔═╡ 06689aec-245d-11eb-3adc-6bc12ace6899
plot([(t,solback(t)[2]) for t in -1.6137*10^6:1:-1.6130*10^6])

# ╔═╡ e7494722-5904-11eb-3789-b9e82efe0f98
md" Here is the classical continuum dynamics"

# ╔═╡ eefe3394-5904-11eb-1f28-5f437d5d7397
backcode=ODEProblem(backeomcfun!,varini,(0.0,tbounce[1]),paras1);
solbackc=solve(backcode,reltol=1e-28,abstol=1e-28,Vern9(),progress=true);

# ╔═╡ fa5a5266-5904-11eb-09fc-9d4d1fe7371b
solc=t->solbackc(t)
dsolc=t->ForwardDiff.derivative(solbackc,t);
ddsolc=t->ForwardDiff.derivative(dsolc,t);

# ╔═╡ 905cb09a-244d-11eb-2977-29c4defc139e
md" Now going to the part for average dynamics"

# ╔═╡ e9e778ec-2453-11eb-20f6-b59e72bfd1e9
	backode_ave=ODEProblem(backeom_average!,varini,[0,-1.615*10^6],[paras_g,solall])

# ╔═╡ 32ad644c-2454-11eb-0163-bb9b1bdc2e2c
solback_ave=solve(backode_ave,reltol=1e-18,abstol=1e-18,KenCarp4(autodiff=false),progress=true);

# ╔═╡ 3e09b7c8-2463-11eb-00f3-3b0f69607108
begin
	sol_ave=t->solback_ave(t);
	dsol_ave=t->ForwardDiff.derivative(solback_ave,t);
	ddsol_ave=t->ForwardDiff.derivative(dsolback_ave,t);
end

# ╔═╡ 773b9c30-246a-11eb-17e2-39632577eecd
begin
	tpx=[t for t in -1.6134*10^6:1:-1.6132*10^6];
	pxdata1=[solback(t)[1] for t in -1.6134*10^6:1:-1.6132*10^6];
	pxdata2=[solback_ave(t)[1] for t in -1.6134*10^6:1:-1.6132*10^6];
	plot(tpx,[pxdata1,pxdata2])
end

# ╔═╡ 2d4865cc-25a5-11eb-3bb5-658aef79244c
md"# Perturbations"

# ╔═╡ 221268a8-5906-11eb-11ad-9d5cf4cb362b
md"The function defines initial values s.t. the scalar and vector constraint perturbations are 0 with minimum possible scalar perturbations avaliable at given time. It will assign value to $V_{10,11,12,19,20} and keeps the others $0$. The value for scalar field perturbations are given by $V_{20} = \delta \phi = \frac{A_{\phi}}{ \sqrt{2 k } v^{1/3} } e^{- i k \eta_0}$"

# ╔═╡ 77d0e658-5905-11eb-1fbc-6db395b77e5d
function get_ini_cos(t,paras2,sol1_fun,dsol1_fun,eta00=0.)
leftm1=(im*preDef.(zeros(7,20)));
constraint_fun(leftm1,preDef.(sol1_fun(t)),paras2);
    var_pert=(preDef.(zeros(20))+im*preDef.(zeros(20)));
    var_pert[19]=0.000001*sol1_fun(t)[1]/sqrt(2*paras2[end])*( im*1/(sol1_fun(t)[1])^(2/3)*paras2[end]*exp(-im*paras2[end]*eta00) + 1/3*1/(sol1_fun(t)[1])^(4/3)* exp(-im*paras2[end]*eta00)*(dsol1_fun(t)[1]) );
    var_pert[20]=0.000001/(sqrt(2*paras2[end])*(sol1_fun(t)[1])^(1/3))*exp(-im*paras2[end]*eta00);
    c_ini_i1=(leftm1[1,19]*var_pert[19]+leftm1[1,20]*var_pert[20]);
    c_ini_i2=(leftm1[4,19]*var_pert[19]+leftm1[4,20]*var_pert[20]);
var_pert[10]=(leftm1[4,11]*c_ini_i1-leftm1[1,11]*c_ini_i2)/(leftm1[4,10]*leftm1[1,11]-leftm1[1,10]*leftm1[4,11]);
    var_pert[11]=(leftm1[1,10]*c_ini_i2-leftm1[4,10]*c_ini_i1)/2/(leftm1[4,10]*leftm1[1,11]-leftm1[1,10]*leftm1[4,11]);
    var_pert[12]=var_pert[11];
	return var_pert;
end


# ╔═╡ 6c22bb5a-5906-11eb-14cc-5b92108a8f9c
md"functions for perturbation ODE"

# ╔═╡ 696ae0e0-5906-11eb-0134-576bf3342b7b
function perteomfun!(dvar,var,paras,t,sol_fun,dsol_fun,VVt,tmp,cslist_tmp)
	HHfun!(sol_fun(t),dsol_fun(t),paras,tmp,VVt,cslist_tmp)
    mul!(dvar,tmp,var);
    nothing
end

# ╔═╡ 7ecae3a6-5906-11eb-3eb8-4350aedf9958
perteomfun_simp=(dvar,var,paras,t,sol_fun,dsol_fun)->perteomfun!(dvar,var,paras,t,sol_fun,dsol_fun,VVt6,tmp,cslist_tmp)

# ╔═╡ 8c0f1544-5906-11eb-3b14-a155e17063e3
function perteomfun_ave!(dvar,var,paras,t,sol_fun,dsol_fun,sol_fun_min,VVt,tmp,paras_ave_tmp,cslist_tmp)
    paras_ave_tmp.=paras;
    paras_ave_tmp[1]=2*paras[1]/((sol_fun_min(t)[1])^(1/3))*sol_fun(t)[1]^(1/3);
	perteomfun!(dvar,var,paras_ave_tmp,t,sol_fun,dsol_fun,VVt,tmp,cslist_tmp)
    nothing
end

# ╔═╡ 8eecd63c-5906-11eb-3276-b5669ea97637
perteomfun_ave_simp=(dvar,var,paras,t,sol_fun,dsol_fun,sol_fun_min)->perteomfun_ave!(dvar,var,paras,t,sol_fun,dsol_fun,sol_fun_min,VVt6,tmp,paras_ave_tmp,cslist_tmp)

# ╔═╡ 49457bd4-5908-11eb-06f0-45623cdeed38
HHfun_ave_simp=(paras,t,sol_fun,dsol_fun,sol_fun_min)->HHfun_ave!(paras,t,sol_fun,dsol_fun,sol_fun_min,VVt6,tmp,paras_ave_tmp,cslist_tmp)

# ╔═╡ a011d2aa-5906-11eb-04f8-036097f0d458
md"Define the ODE function for both minimum and average scheme"

# ╔═╡ af6525d8-5906-11eb-0c40-8344298c594d
begin
	pert_fun_minimal=(dvar,var,paras,t)-> perteomfun_simp(dvar,var,paras,t,solall,dsolall);
	hmatrix_jac_minimal=(tmp,var,paras,t)->HHfun!(solall(t),dsolall(t),paras,tmp,VVt6,cslist_tmp,false);
	newpert_ode_minimal=ODEFunction(pert_fun_minimal, jac=hmatrix_jac_minimal)
end

# ╔═╡ bea6855a-5906-11eb-0246-2fa1560e489f
begin
	pert_fun_minimal_ave=(dvar,var,paras,t)-> perteomfun_ave_simp(dvar,var,paras,t,sol_ave,dsol_ave,solall);
	hmatrix_jac_minimal_ave=(tmp,var,paras,t)-> HHfun_ave_simp(paras,t,sol_ave,dsol_ave,solall);
	newpert_ode_minimal_ave=ODEFunction(pert_fun_minimal_ave)
end

# ╔═╡ e19985ee-5906-11eb-2941-fd46339e8ebe
md"Solve ODE problem"

# ╔═╡ ec7f2216-5906-11eb-1a3e-3fbac218844f
begin
	tspan_pert=(0.0,-1.6132*10^6)
     var_pert_new=(get_ini_cos((tspan_pert[1]),BigFloat.(real(paras_g)),sol,dsol));
	pertode=ODEProblem(newpert_ode_minimal,var_pert_new,tspan_pert,paras_g);
end

# ╔═╡ 1b54cdcc-5907-11eb-36ca-d361c4e01321
sol_pert_late_t=solve(pertode,KenCarp4(autodiff=false),reltol=1e-14,abstol=1e-14,progress=true,progress_steps=1000,maxiters=1e5);

# ╔═╡ ab928610-5908-11eb-0e06-edd04ba2dfaf
md"For average dynamics"

# ╔═╡ 9c4ec402-5908-11eb-0614-21cf004def0e
pertode1=ODEProblem(newpert_ode_minimal_ave,var_pert_new,(sol_pert_late_ave_t.t[end],solback_ave2.t[end]),paras_g);

# ╔═╡ 9debbcd4-5908-11eb-16f5-83a357f52790
sol_pert_late_t_ave=solve(pertode1,KenCarp4(autodiff=false),reltol=1e-14,abstol=1e-14,progress=true,progress_steps=1000,maxiters=2e5);

# ╔═╡ Cell order:
# ╟─218661f8-244c-11eb-359f-3dc89bf9b72d
# ╠═bf01ae1c-244a-11eb-38c3-cd2fc304078e
# ╠═e94bce6e-244a-11eb-3982-e91b9df5113a
# ╠═e96098c6-244a-11eb-081d-cf9c411577ea
# ╠═e9749fce-244a-11eb-0077-63a7bdff2b95
# ╠═e9891a38-244a-11eb-173b-9fbd6f76fd31
# ╠═e99ea5c6-244a-11eb-1146-051bf16e5bcd
# ╠═e9b2ad50-244a-11eb-2911-834ce9df606c
# ╠═e9c6c0c4-244a-11eb-3151-f15b3b1a0f56
# ╠═44d0f97c-2461-11eb-36de-05836e748f5d
# ╠═1c5df0a6-244c-11eb-24c1-8f67b84d6814
# ╠═8aad6f94-58e7-11eb-2ed3-f39873f9fa3f
# ╠═77d80576-58e9-11eb-3298-f5c2c4d87fb0
# ╠═7e83f146-58e9-11eb-0d75-dda04bdd3be5
# ╟─8aabdaee-58e7-11eb-2e3b-8557a043d4c9
# ╠═8a3ed4c6-58e7-11eb-3fec-11225371a961
# ╠═acc54e58-58f1-11eb-317d-a131de0b6da0
# ╠═2525845e-5900-11eb-34ef-2995bcb30432
# ╟─7623b2e0-5900-11eb-16e7-a7ae912f2343
# ╠═407a27dc-5900-11eb-172e-e1c387153ba5
# ╠═4fb2cf4c-5900-11eb-1033-01ccc6d1e427
# ╟─c31f96ea-58f1-11eb-1ab0-c1b39315c5aa
# ╠═75bf170c-5902-11eb-178e-91b9155e9a9e
# ╠═ac0c145e-58fd-11eb-1adf-c77543227399
# ╟─ab22575c-5901-11eb-13fd-cba5f092f9f4
# ╠═e3b880ac-58ff-11eb-1b24-e7bcdbf0eba6
# ╠═555fb00a-5901-11eb-16e3-93d5c5acf7e9
# ╟─b1c507de-5902-11eb-2446-9397b9b6a3a4
# ╠═42f82aa2-5902-11eb-1f71-55cc36ebec46
# ╠═91e20baa-5903-11eb-2b87-37c6b3934dcb
# ╠═ae3fc658-5902-11eb-2a72-37b379d8b63f
# ╠═82762c78-5903-11eb-35ef-e9a0694146bf
# ╟─3c322ece-5906-11eb-1216-11abe6fdda1f
# ╠═39bc6b8c-5906-11eb-2394-312f351741d9
# ╠═3eed963c-5906-11eb-18b1-5dbd76f9e4ef
# ╟─90987642-2449-11eb-3267-db1d275eb514
# ╟─260bd22c-244b-11eb-10f4-2934f48ed48c
# ╟─9ad79028-5902-11eb-374e-7b517f1e7ccd
# ╟─170da384-5904-11eb-1ba9-99f90c83b476
# ╠═ed585cd8-244b-11eb-210a-31d47d529b9d
# ╠═eff87490-244c-11eb-3c60-ef83b18c8354
# ╠═f00d0086-244c-11eb-05e1-55b91491587e
# ╟─4a3cb00e-5904-11eb-2e9b-93017324fc54
# ╠═f24c5d5c-244b-11eb-0f33-6b77764a58db
# ╠═083c5990-244d-11eb-28c0-f70dc2e6e92b
# ╠═2a72a87e-2453-11eb-0056-fbcc7cc117a4
# ╠═c630afbe-5904-11eb-289c-af72067e1606
# ╠═dbfee5c2-5904-11eb-3ee3-858effd562f7
# ╠═69c33472-245c-11eb-04c7-fb5055f90ea0
# ╠═06689aec-245d-11eb-3adc-6bc12ace6899
# ╠═e7494722-5904-11eb-3789-b9e82efe0f98
# ╠═eefe3394-5904-11eb-1f28-5f437d5d7397
# ╠═fa5a5266-5904-11eb-09fc-9d4d1fe7371b
# ╠═905cb09a-244d-11eb-2977-29c4defc139e
# ╠═e9e778ec-2453-11eb-20f6-b59e72bfd1e9
# ╠═32ad644c-2454-11eb-0163-bb9b1bdc2e2c
# ╠═3e09b7c8-2463-11eb-00f3-3b0f69607108
# ╠═773b9c30-246a-11eb-17e2-39632577eecd
# ╠═2d4865cc-25a5-11eb-3bb5-658aef79244c
# ╟─221268a8-5906-11eb-11ad-9d5cf4cb362b
# ╠═77d0e658-5905-11eb-1fbc-6db395b77e5d
# ╟─6c22bb5a-5906-11eb-14cc-5b92108a8f9c
# ╠═696ae0e0-5906-11eb-0134-576bf3342b7b
# ╠═7ecae3a6-5906-11eb-3eb8-4350aedf9958
# ╠═8c0f1544-5906-11eb-3b14-a155e17063e3
# ╠═8eecd63c-5906-11eb-3276-b5669ea97637
# ╠═49457bd4-5908-11eb-06f0-45623cdeed38
# ╠═a011d2aa-5906-11eb-04f8-036097f0d458
# ╠═af6525d8-5906-11eb-0c40-8344298c594d
# ╠═bea6855a-5906-11eb-0246-2fa1560e489f
# ╟─e19985ee-5906-11eb-2941-fd46339e8ebe
# ╠═ec7f2216-5906-11eb-1a3e-3fbac218844f
# ╠═1b54cdcc-5907-11eb-36ca-d361c4e01321
# ╠═ab928610-5908-11eb-0e06-edd04ba2dfaf
# ╠═9c4ec402-5908-11eb-0614-21cf004def0e
# ╠═9debbcd4-5908-11eb-16f5-83a357f52790
