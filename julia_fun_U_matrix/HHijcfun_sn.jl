function HHijcfun(index,vars,dvars,VVt_rho,paras) 
 (ii,jj)=index; 
return getfield(Main,Symbol("HHijcfun",(ii-1)*20+jj))(vars,dvars,VVt_rho,paras); 
 end 
function HHijcfun1(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3  
 end 
function HHijcfun2(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun3(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun4(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun5(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun6(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun7(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun8(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun9(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun10(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(beta*(V1t*kappa + V2t*kappa + 2*Clambda + 2*pow(b0, 2)))/8 - (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (3*beta*kappa*pow(v, -2)*pow(gPi, 2))/16  
 end 
function HHijcfun11(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(2*V1t*kappa + 2*V2t*kappa + 4*Clambda + 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2)))/16  
 end 
function HHijcfun12(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(2*V1t*kappa + 2*V2t*kappa + 4*Clambda + 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2)))/16  
 end 
function HHijcfun13(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun14(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun15(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun16(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun17(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun18(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun19(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (dV1t + dV2t)/2  
 end 
function HHijcfun20(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(gPi*pow(v, -1))/2  
 end 
function HHijcfun21(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun22(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3  
 end 
function HHijcfun23(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun24(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun25(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun26(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun27(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun28(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun29(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun30(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(2*V1t*kappa + 2*V2t*kappa + 4*Clambda + 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2)))/16  
 end 
function HHijcfun31(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(beta*(V1t*kappa + V2t*kappa + 2*Clambda + 2*pow(b0, 2)))/8 + (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (3*beta*kappa*pow(v, -2)*pow(gPi, 2))/16  
 end 
function HHijcfun32(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(V1t*kappa + V2t*kappa + 2*Clambda + 2*pow(b0, 2)))/8 - (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (beta*kappa*pow(v, -2)*pow(gPi, 2))/16  
 end 
function HHijcfun33(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun34(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun35(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun36(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun37(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun38(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun39(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (dV1t + dV2t)/2  
 end 
function HHijcfun40(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(gPi*pow(v, -1))/2  
 end 
function HHijcfun41(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun42(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun43(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3  
 end 
function HHijcfun44(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun45(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun46(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun47(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun48(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun49(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun50(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(2*V1t*kappa + 2*V2t*kappa + 4*Clambda + 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2)))/16  
 end 
function HHijcfun51(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(V1t*kappa + V2t*kappa + 2*Clambda + 2*pow(b0, 2)))/8 - (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (beta*kappa*pow(v, -2)*pow(gPi, 2))/16  
 end 
function HHijcfun52(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(beta*(V1t*kappa + V2t*kappa + 2*Clambda + 2*pow(b0, 2)))/8 + (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (3*beta*kappa*pow(v, -2)*pow(gPi, 2))/16  
 end 
function HHijcfun53(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun54(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun55(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun56(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun57(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun58(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun59(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (dV1t + dV2t)/2  
 end 
function HHijcfun60(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(gPi*pow(v, -1))/2  
 end 
function HHijcfun61(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun62(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun63(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun64(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun65(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun66(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun67(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun68(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun69(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun70(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun71(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun72(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun73(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun74(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun75(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun76(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(-2*V1t*kappa - 2*V2t*kappa - 4*Clambda - 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2) - 16*alpha*pow(b0, 4)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)))/8  
 end 
function HHijcfun77(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun78(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun79(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun80(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun81(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun82(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun83(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun84(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun85(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun86(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun87(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     im*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun88(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun89(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun90(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun91(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun92(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun93(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun94(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun95(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun96(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun97(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(-2*V1t*kappa - 2*V2t*kappa - 4*Clambda - 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2) - 16*alpha*pow(b0, 4)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)))/8  
 end 
function HHijcfun98(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun99(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun100(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun101(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun102(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     im*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun103(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun104(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun105(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun106(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun107(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun108(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun109(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun110(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun111(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun112(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun113(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun114(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun115(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + 2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun116(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun117(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun118(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(beta*(V1t*kappa + V2t*kappa + 2*Clambda))/4 - (beta*pow(b0, 2))/2 + (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (beta*kappa*pow(v, -2)*pow(gPi, 2))/8 - 2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun119(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*k*alpha*beta*gPi*pow(b0, 2)*pow(v, -4/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun120(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun121(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun122(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun123(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun124(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun125(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun126(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun127(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun128(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun129(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun130(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun131(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun132(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun133(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(-2*V1t*kappa - 2*V2t*kappa - 4*Clambda - 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2) - 16*alpha*pow(b0, 4)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)))/8  
 end 
function HHijcfun134(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun135(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun136(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun137(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun138(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun139(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun140(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun141(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun142(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun143(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun144(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun145(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun146(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun147(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun148(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun149(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun150(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun151(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun152(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun153(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun154(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*(-2*V1t*kappa - 2*V2t*kappa - 4*Clambda - 4*pow(b0, 2) + kappa*pow(v, -2)*pow(gPi, 2) - 16*alpha*pow(b0, 4)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)))/8  
 end 
function HHijcfun155(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun156(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun157(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun158(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun159(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun160(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun161(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun162(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun163(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun164(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun165(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun166(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun167(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun168(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun169(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0 - (2*dv*pow(v, -1))/3 + 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun170(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun171(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun172(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun173(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun174(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun175(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(beta*(V1t*kappa + V2t*kappa + 2*Clambda))/4 - (beta*pow(b0, 2))/2 + (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + (beta*kappa*pow(v, -2)*pow(gPi, 2))/8 - 2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun176(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun177(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun178(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*(1 + pow(beta, 2)))/2 + 2*alpha*pow(b0, 4)*pow(beta, 3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun179(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*k*alpha*beta*gPi*pow(b0, 2)*pow(v, -4/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun180(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun181(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun182(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)  
 end 
function HHijcfun183(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)  
 end 
function HHijcfun184(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun185(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun186(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun187(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun188(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun189(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun190(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3  
 end 
function HHijcfun191(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun192(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun193(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun194(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun195(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun196(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun197(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun198(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun199(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun200(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun201(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)  
 end 
function HHijcfun202(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun203(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)*(1 - 2*alpha*pow(k, 2)*pow(v, -2/3)*pow(kappa, -1)*pow(rhodust, -1))  
 end 
function HHijcfun204(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun205(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun206(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun207(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun208(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun209(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun210(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun211(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3  
 end 
function HHijcfun212(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun213(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun214(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun215(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     im*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun216(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun217(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun218(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun219(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*gPi*pow(k, 2)*pow(v, -5/3)*pow(beta, -1)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun220(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun221(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)  
 end 
function HHijcfun222(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     pow(beta, -1)*(1 - 2*alpha*pow(k, 2)*pow(v, -2/3)*pow(kappa, -1)*pow(rhodust, -1))  
 end 
function HHijcfun223(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(k, 2)*pow(v, -2/3)*pow(beta, -1)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun224(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun225(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun226(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun227(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun228(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun229(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun230(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun231(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun232(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3  
 end 
function HHijcfun233(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun234(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun235(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun236(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun237(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun238(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun239(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*gPi*pow(k, 2)*pow(v, -5/3)*pow(beta, -1)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun240(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun241(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun242(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun243(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun244(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun245(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun246(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun247(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun248(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun249(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun250(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun251(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun252(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun253(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun254(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun255(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun256(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun257(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun258(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun259(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun260(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun261(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun262(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun263(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun264(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun265(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun266(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun267(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun268(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun269(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun270(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun271(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun272(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun273(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun274(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun275(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun276(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun277(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun278(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun279(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun280(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun281(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun282(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun283(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun284(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun285(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun286(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun287(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun288(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun289(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun290(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun291(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun292(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun293(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun294(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun295(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun296(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun297(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun298(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun299(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*gPi*pow(v, -4/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun300(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun301(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun302(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun303(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun304(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun305(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun306(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun307(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(beta, -1)*(pow(k, 2)*pow(v, -2/3) + pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun308(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-4*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun309(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun310(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun311(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun312(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun313(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun314(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     im*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun315(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun316(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun317(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun318(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun319(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun320(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun321(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun322(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun323(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun324(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun325(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun326(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun327(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (4*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun328(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*pow(beta, -1)*(pow(k, 2)*pow(v, -2/3) + pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun329(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun330(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun331(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun332(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun333(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*k*pow(v, -1/3)*pow(beta, -1)*(kappa*rhodust + 2*alpha*pow(b0, 2)*pow(beta, 2))*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun334(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun335(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun336(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*k*alpha*beta*pow(b0, 2)*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun337(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun338(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun339(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun340(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun341(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun342(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun343(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (2*im)*b0*k*alpha*pow(v, -1/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun344(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun345(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun346(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -pow(beta, -1) + 2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun347(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun348(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun349(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -2*alpha*beta*pow(b0, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun350(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun351(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun352(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (im/2)*k*pow(v, -1/3)*pow(beta, -1)  
 end 
function HHijcfun353(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun354(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun355(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun356(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun357(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun358(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -b0 - (dv*pow(v, -1))/3 - 2*alpha*pow(b0, 3)*pow(beta, 2)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun359(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-2*im)*b0*k*alpha*gPi*pow(v, -4/3)*pow(kappa, -1)*pow(rhodust, -1)  
 end 
function HHijcfun360(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun361(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun362(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun363(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun364(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun365(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun366(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun367(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun368(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun369(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun370(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*kappa*gPi*pow(v, -1))/4  
 end 
function HHijcfun371(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*kappa*gPi*pow(v, -1))/4  
 end 
function HHijcfun372(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (beta*kappa*gPi*pow(v, -1))/4  
 end 
function HHijcfun373(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun374(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun375(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun376(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun377(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun378(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun379(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(dv*pow(v, -1))  
 end 
function HHijcfun380(vars,dvars,VVt_rho,paras) 
    -1  
 end 
function HHijcfun381(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun382(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(alpha*gPi*pow(k, 2)*pow(v, -5/3)*pow(rhodust, -1))  
 end 
function HHijcfun383(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     -(alpha*gPi*pow(k, 2)*pow(v, -5/3)*pow(rhodust, -1))  
 end 
function HHijcfun384(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun385(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun386(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     b0*im*k*alpha*beta*gPi*pow(v, -4/3)*pow(rhodust, -1)  
 end 
function HHijcfun387(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun388(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun389(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*b0*k*alpha*beta*gPi*pow(v, -4/3)*pow(rhodust, -1)  
 end 
function HHijcfun390(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     ((dV1t + dV2t)*beta*kappa)/4  
 end 
function HHijcfun391(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     ((dV1t + dV2t)*beta*kappa)/4  
 end 
function HHijcfun392(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     ((dV1t + dV2t)*beta*kappa)/4  
 end 
function HHijcfun393(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun394(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun395(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     im*k*alpha*gPi*pow(b0, 2)*pow(v, -4/3)*pow(beta, 2)*pow(rhodust, -1)  
 end 
function HHijcfun396(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun397(vars,dvars,VVt_rho,paras) 
    0.  
 end 
function HHijcfun398(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     (-im)*k*alpha*gPi*pow(b0, 2)*pow(v, -4/3)*pow(beta, 2)*pow(rhodust, -1)  
 end 
function HHijcfun399(vars,dvars,VVt_rho,paras) 
v,b0,Phi,gPi=vars; 
 dv,db0,dPhi,dgPi=dvars;   
 V1t,V2t,dV1t,dV2t,ddV1t,ddV2t,rhodust=VVt_rho;  
 lambda, beta, alpha, kappa, Clambda, ms,k =paras; 
     ddV1t + ddV2t + pow(k, 2)*pow(v, -2/3) + alpha*pow(k, 2)*pow(v, -8/3)*pow(gPi, 2)*pow(rhodust, -1)  
 end 
function HHijcfun400(vars,dvars,VVt_rho,paras) 
    0.  
 end 
