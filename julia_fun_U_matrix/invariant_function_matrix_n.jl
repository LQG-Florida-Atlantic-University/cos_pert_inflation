function constraint_fun(tmp,var_back,paras) 
  v,b0,Phi,gPi=var_back; 
 lambda, beta, alpha, kappa, Clambda, ms , k=paras; 

V1t=V1(Phi,paras);
V2t=V2(Phi,paras);
dV1t=dV1(Phi,paras);
dV2t=dV2(Phi,paras);
ddV1t=ddV1(Phi,paras);
ddV2t=ddV2(Phi,paras);
 
    tmp[1,1] = 0 ;  
    tmp[1,2] = 0 ;  
    tmp[1,3] = 0 ;  
    tmp[1,4] = 0 ;  
    tmp[1,5] = 0 ;  
    tmp[1,6] = 4*beta*cot((b0*beta*lambda)/2)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,7] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,8] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,9] = -4*beta*cot((b0*beta*lambda)/2)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,10] = (-16*im)*beta*lambda*pow(v, 7/3)*pow(sin(b0*beta*lambda), 2)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*(cos((k*lambda*pow(v, -1/3))/2) - im*sin((k*lambda*pow(v, -1/3))/2))*sin((k*lambda*pow(v, -1/3))/2) ;  
    tmp[1,11] = (2*im)*beta*lambda*(3 + cos(2*b0*beta*lambda))*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[1,12] = (2*im)*beta*lambda*(3 + cos(2*b0*beta*lambda))*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[1,13] = 0 ;  
    tmp[1,14] = 0 ;  
    tmp[1,15] = -4*(-1 + cos(b0*beta*lambda) + 2*cos(k*lambda*pow(v, -1/3)))*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 2)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,16] = -4*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,17] = -4*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,18] = 4*(-1 + cos(b0*beta*lambda) + 2*cos(k*lambda*pow(v, -1/3)))*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 2)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[1,19] = 0 ;  
    tmp[1,20] = (2*im)*lamphi*gPi*pow(v, -2/3)*pow(lambda, 2)*pow((2*lambda^3*Clambda)/kappa + (V1t + V2t)*lambda^3*lamphi + (lambda^3*lamphi*gPi^2)/(2*v^2) + (6*lambda*sin(b0*beta*lambda)^2)/kappa - (3*(1 + beta^2)*lambda*sin(2*b0*beta*lambda)^2)/(2*beta^2*kappa), -1)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[2,1] = 0 ;  
    tmp[2,2] = 0 ;  
    tmp[2,3] = 0 ;  
    tmp[2,4] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[2,5] = -4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 2)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*(1 + cos(b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[2,6] = 0 ;  
    tmp[2,7] = 0 ;  
    tmp[2,8] = 2*beta*pow(v, 7/3)*pow(csc((b0*beta*lambda)/2), 2)*pow(sin(b0*beta*lambda), 4)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[2,9] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[2,10] = 0 ;  
    tmp[2,11] = 0 ;  
    tmp[2,12] = 0 ;  
    tmp[2,13] = -8*cos((b0*beta*lambda)/2)*pow(b0, -1)*pow(v, 7/3)*pow(sin((b0*beta*lambda)/2), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*(cos((k*lambda*pow(v, -1/3))/2) - im*sin((k*lambda*pow(v, -1/3))/2))*(2*(1 + cos(b0*beta*lambda))*cos((k*lambda*pow(v, -1/3))/2) - (2*im)*(-1 + cos(b0*beta*lambda))*sin((k*lambda*pow(v, -1/3))/2)) ;  
    tmp[2,14] = 2*pow(b0, -1)*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*(2*sin(b0*beta*lambda) + sin(2*b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[2,15] = 0 ;  
    tmp[2,16] = (-8*im)*pow(b0, -1)*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[2,17] = -2*pow(b0, -1)*pow(v, 7/3)*pow(csc((b0*beta*lambda)/2), 2)*pow(sin(b0*beta*lambda), 4)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[2,18] = -4*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[2,19] = 0 ;  
    tmp[2,20] = 0 ;  
    tmp[3,1] = 0 ;  
    tmp[3,2] = 0 ;  
    tmp[3,3] = 0 ;  
    tmp[3,4] = 2*beta*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*(2*sin(b0*beta*lambda) + sin(2*b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[3,5] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[3,6] = 4*beta*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[3,7] = -2*beta*pow(v, 7/3)*pow(csc((b0*beta*lambda)/2), 2)*pow(sin(b0*beta*lambda), 4)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[3,8] = 0 ;  
    tmp[3,9] = 0 ;  
    tmp[3,10] = 0 ;  
    tmp[3,11] = 0 ;  
    tmp[3,12] = 0 ;  
    tmp[3,13] = -2*pow(b0, -1)*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*(2*sin(b0*beta*lambda) + sin(2*b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[3,14] = -2*pow(b0, -1)*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*(2 + cos(b0*beta*lambda)*(-2 + 4*cos(k*lambda*pow(v, -1/3))*pow(sin((b0*beta*lambda)/2), 2) - (2*im)*sin(k*lambda*pow(v, -1/3))) + (2*im)*pow(cos(b0*beta*lambda), 2)*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[3,15] = -4*pow(b0, -1)*pow(v, 7/3)*pow(sin(b0*beta*lambda), 3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[3,16] = 2*pow(b0, -1)*pow(v, 7/3)*pow(csc((b0*beta*lambda)/2), 2)*pow(sin(b0*beta*lambda), 4)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1) ;  
    tmp[3,17] = (-8*im)*pow(b0, -1)*pow(v, 7/3)*pow(beta^2*kappa*lambda^2*lamphi*gPi^2 + v^2*(4*beta^2*lambda^2*Clambda + 2*V1t*beta^2*kappa*lambda^2*lamphi + 2*V2t*beta^2*kappa*lambda^2*lamphi + 12*beta^2*sin(b0*beta*lambda)^2 - 3*sin(2*b0*beta*lambda)^2 - 3*beta^2*sin(2*b0*beta*lambda)^2), -1)*sin(b0*beta*lambda)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[3,18] = 0 ;  
    tmp[3,19] = 0 ;  
    tmp[3,20] = 0 ;  
    tmp[4,1] = (exp((-im)*k*lambda*pow(v, -1/3))*pow(v, -1)*pow(beta, -2)*pow(kappa, -1)*pow(lambda, -2)*(-(pow(v, 2)*(8*Clambda*pow(beta, 2)*pow(lambda, 2) + 8*Clambda*exp(im*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(lambda, 2) + 4*V1t*kappa*lamphi*(1 + exp(im*k*lambda*pow(v, -1/3)))*pow(beta, 2)*pow(lambda, 2) - 4*cos(b0*beta*lambda)*cos((k*lambda*pow(v, -1/3))/2)*cos(2*k*lambda*pow(v, -1/3))*exp((im/2)*k*lambda*pow(v, -1/3))*pow(sin(b0*beta*lambda), 2) + 8*pow(beta, 2)*pow(sin(b0*beta*lambda), 2) - 4*cos(b0*beta*lambda)*cos((k*lambda*pow(v, -1/3))/2)*cos(2*k*lambda*pow(v, -1/3))*exp((im/2)*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(sin(b0*beta*lambda), 2) + 8*exp(im*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(sin(b0*beta*lambda), 2) + sin(b0*beta*lambda)*sin(2*b0*beta*lambda) + exp(im*k*lambda*pow(v, -1/3))*sin(b0*beta*lambda)*sin(2*b0*beta*lambda) + pow(beta, 2)*sin(b0*beta*lambda)*sin(2*b0*beta*lambda) + exp(im*k*lambda*pow(v, -1/3))*pow(beta, 2)*sin(b0*beta*lambda)*sin(2*b0*beta*lambda) - csc((k*lambda*pow(v, -1/3))/2)*exp((im/2)*k*lambda*pow(v, -1/3))*pow(sin(2*b0*beta*lambda), 2)*sin(2*k*lambda*pow(v, -1/3)) - csc((k*lambda*pow(v, -1/3))/2)*exp((im/2)*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(sin(2*b0*beta*lambda), 2)*sin(2*k*lambda*pow(v, -1/3)) + 4*V2t*kappa*lamphi*exp(im*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(lambda, 2)*(1 + cos(k*pow(v, -2/3)*pow(lambda, 2)) - im*sin(k*pow(v, -2/3)*pow(lambda, 2)))))/2 + kappa*lamphi*pow(beta, 2)*pow(lambda, 2)*pow(gPi, 2)*(-1 + exp(im*k*lambda*pow(v, -1/3)) + 2*cos(k*pow(v, -2/3)*pow(lambda, 2))*exp(im*k*lambda*pow(v, -1/3)) - (2*im)*exp(im*k*lambda*pow(v, -1/3))*sin(k*pow(v, -2/3)*pow(lambda, 2)))))/8 ;  
    tmp[4,2] = (lamphi*pow(v, -1)*pow(gPi, 2))/4 + (v*pow(beta, -2)*pow(kappa, -1)*pow(lambda, -2)*(-32*Clambda*pow(beta, 2)*pow(lambda, 2) - 16*V1t*kappa*lamphi*pow(beta, 2)*pow(lambda, 2) - 16*V2t*kappa*lamphi*pow(beta, 2)*pow(lambda, 2) - 32*pow(beta, 2)*pow(sin(b0*beta*lambda), 2) + 7*pow(sin(2*b0*beta*lambda), 2) + cos(2*k*lambda*pow(v, -1/3))*pow(sin(2*b0*beta*lambda), 2) + 7*pow(beta, 2)*pow(sin(2*b0*beta*lambda), 2) + cos(2*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(sin(2*b0*beta*lambda), 2)))/32 ;  
    tmp[4,3] = (lamphi*pow(v, -1)*pow(gPi, 2))/4 + (v*pow(beta, -2)*pow(kappa, -1)*pow(lambda, -2)*(-32*Clambda*pow(beta, 2)*pow(lambda, 2) - 16*V1t*kappa*lamphi*pow(beta, 2)*pow(lambda, 2) - 16*V2t*kappa*lamphi*pow(beta, 2)*pow(lambda, 2) - 32*pow(beta, 2)*pow(sin(b0*beta*lambda), 2) + 7*pow(sin(2*b0*beta*lambda), 2) + cos(2*k*lambda*pow(v, -1/3))*pow(sin(2*b0*beta*lambda), 2) + 7*pow(beta, 2)*pow(sin(2*b0*beta*lambda), 2) + cos(2*k*lambda*pow(v, -1/3))*pow(beta, 2)*pow(sin(2*b0*beta*lambda), 2)))/32 ;  
    tmp[4,4] = 0 ;  
    tmp[4,5] = 0 ;  
    tmp[4,6] = (im/16)*v*pow(beta, -2)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*pow(cos((b0*beta*lambda)/2), 3)*(-3 + 5*cos(2*b0*beta*lambda) + (9 + cos(2*b0*beta*lambda))*cos(k*lambda*pow(v, -1/3)) + 4*cos(b0*beta*lambda)*(1 + cos(k*lambda*pow(v, -1/3))) + 2*(5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2))*(-sin((b0*beta*lambda)/2) + sin((3*b0*beta*lambda)/2))*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,7] = (im/32)*v*cos(b0*beta*lambda)*pow(beta, -2)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*(-3 + 5*cos(2*b0*beta*lambda) + (9 + cos(2*b0*beta*lambda))*cos(k*lambda*pow(v, -1/3)) + 4*cos(b0*beta*lambda)*(1 + cos(k*lambda*pow(v, -1/3))) + 2*(5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2))*pow(sin(b0*beta*lambda), 2)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,8] = (im/32)*v*cos(b0*beta*lambda)*pow(beta, -2)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*(-3 + 5*cos(2*b0*beta*lambda) + (9 + cos(2*b0*beta*lambda))*cos(k*lambda*pow(v, -1/3)) + 4*cos(b0*beta*lambda)*(1 + cos(k*lambda*pow(v, -1/3))) + 2*(5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2))*pow(sin(b0*beta*lambda), 2)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,9] = (im/16)*v*pow(beta, -2)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*pow(cos((b0*beta*lambda)/2), 3)*(-3 + 5*cos(2*b0*beta*lambda) + (9 + cos(2*b0*beta*lambda))*cos(k*lambda*pow(v, -1/3)) + 4*cos(b0*beta*lambda)*(1 + cos(k*lambda*pow(v, -1/3))) + 2*(5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2))*(sin((b0*beta*lambda)/2) - sin((3*b0*beta*lambda)/2))*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,10] = (v*exp((-2*im)*k*lambda*pow(v, -1/3))*(1 + exp(im*k*lambda*pow(v, -1/3)))*pow(beta, -2)*(1 + pow(beta, 2) + exp((2*im)*k*lambda*pow(v, -1/3))*(1 + pow(beta, 2)) + cos(2*b0*beta*lambda)*(1 + exp((2*im)*k*lambda*pow(v, -1/3)) + 6*exp(im*k*lambda*pow(v, -1/3)))*(1 + pow(beta, 2)) - 2*exp(im*k*lambda*pow(v, -1/3))*(1 + 5*pow(beta, 2)))*pow(kappa, -1)*pow(lambda, -1)*sin(2*b0*beta*lambda))/8 ;  
    tmp[4,11] = (v*pow(beta, -2)*pow(kappa, -1)*pow(lambda, -1)*(64*pow(beta, 2)*pow(sin((k*lambda)/(2*v^(1/3))), 2)*sin(b0*beta*lambda) + (2 - 2*cos(2*k*lambda*pow(v, -1/3)) + 8*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3)) + 8*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3)) - 46*pow(beta, 2) - 16*cos(k*lambda*pow(v, -1/3))*pow(beta, 2) - 2*cos(2*k*lambda*pow(v, -1/3))*pow(beta, 2) + 8*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3))*pow(beta, 2) + 8*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3))*pow(beta, 2) + cos(2*lambda*(b0*beta + k*pow(v, -1/3)))*(1 + pow(beta, 2)) + cos(2*b0*beta*lambda - 2*k*lambda*pow(v, -1/3))*(1 + pow(beta, 2)) - 4*cos(b0*beta*lambda)*pow(sin((k*lambda)/v^(1/3)), 2) - 4*cos(b0*beta*lambda)*pow(beta, 2)*pow(sin((k*lambda)/v^(1/3)), 2))*sin(2*b0*beta*lambda) + 23*(1 + pow(beta, 2))*sin(4*b0*beta*lambda)))/32 ;  
    tmp[4,12] = (v*pow(beta, -2)*pow(kappa, -1)*pow(lambda, -1)*(64*pow(beta, 2)*pow(sin((k*lambda)/(2*v^(1/3))), 2)*sin(b0*beta*lambda) + (2 - 2*cos(2*k*lambda*pow(v, -1/3)) + 8*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3)) + 8*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3)) - 46*pow(beta, 2) - 16*cos(k*lambda*pow(v, -1/3))*pow(beta, 2) - 2*cos(2*k*lambda*pow(v, -1/3))*pow(beta, 2) + 8*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3))*pow(beta, 2) + 8*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3))*pow(beta, 2) + cos(2*lambda*(b0*beta + k*pow(v, -1/3)))*(1 + pow(beta, 2)) + cos(2*b0*beta*lambda - 2*k*lambda*pow(v, -1/3))*(1 + pow(beta, 2)) - 4*cos(b0*beta*lambda)*pow(sin((k*lambda)/v^(1/3)), 2) - 4*cos(b0*beta*lambda)*pow(beta, 2)*pow(sin((k*lambda)/v^(1/3)), 2))*sin(2*b0*beta*lambda) + 23*(1 + pow(beta, 2))*sin(4*b0*beta*lambda)))/32 ;  
    tmp[4,13] = 0 ;  
    tmp[4,14] = 0 ;  
    tmp[4,15] = (-im/128)*v*pow(b0, -1)*pow(beta, -3)*pow(kappa, -1)*pow(lambda, -2)*sin(2*b0*beta*lambda)*(128*pow(beta, 2) - 2*(5 + cos(k*lambda*pow(v, -1/3)))*(1 + pow(beta, 2))*pow(sin(b0*beta*lambda), 3) + (3*(6 + 10*cos(2*b0*beta*lambda) + 14*cos(k*lambda*pow(v, -1/3)) + cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3)) + cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3)))*(1 + pow(beta, 2))*sin(b0*beta*lambda))/2 + 8*(1 + pow(beta, 2))*pow(cos((k*lambda)/(2*v^(1/3))), 2)*sin(2*b0*beta*lambda))*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,16] = (im/8)*v*(cos((b0*beta*lambda)/2) + cos((3*b0*beta*lambda)/2))*pow(b0, -1)*pow(beta, -3)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*pow(sin((b0*beta*lambda)/2), 3)*(-23 - 2*cos(b0*beta*lambda)*(13 + 5*cos(k*lambda*pow(v, -1/3))) + (5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2) - 5*pow(sin(b0*beta*lambda), 2) - cos(k*lambda*pow(v, -1/3))*(3 + pow(sin(b0*beta*lambda), 2)))*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,17] = (-im/32)*v*pow(b0, -1)*pow(beta, -3)*(1 + pow(beta, 2))*pow(kappa, -1)*pow(lambda, -2)*(1 + ((9 + cos(2*b0*beta*lambda))*cos(k*lambda*pow(v, -1/3)))/2 + 2*cos(b0*beta*lambda)*(1 + cos(k*lambda*pow(v, -1/3))) + (5 + cos(k*lambda*pow(v, -1/3)))*pow(cos(b0*beta*lambda), 2) - 5*pow(sin(b0*beta*lambda), 2))*sin(b0*beta*lambda)*sin(2*b0*beta*lambda)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,18] = (im/128)*v*pow(b0, -1)*pow(beta, -3)*(40 + 10*cos(3*b0*beta*lambda) - 8*cos(k*lambda*pow(v, -1/3)) + 15*cos(b0*beta*lambda - k*lambda*pow(v, -1/3)) - 12*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3)) + cos(3*b0*beta*lambda - k*lambda*pow(v, -1/3)) + 15*cos(b0*beta*lambda + k*lambda*pow(v, -1/3)) - 12*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3)) + cos(3*b0*beta*lambda + k*lambda*pow(v, -1/3)) + 168*pow(beta, 2) + 10*cos(3*b0*beta*lambda)*pow(beta, 2) - 8*cos(k*lambda*pow(v, -1/3))*pow(beta, 2) + 15*cos(b0*beta*lambda - k*lambda*pow(v, -1/3))*pow(beta, 2) - 12*cos(2*b0*beta*lambda - k*lambda*pow(v, -1/3))*pow(beta, 2) + cos(3*b0*beta*lambda - k*lambda*pow(v, -1/3))*pow(beta, 2) + 15*cos(b0*beta*lambda + k*lambda*pow(v, -1/3))*pow(beta, 2) - 12*cos(2*b0*beta*lambda + k*lambda*pow(v, -1/3))*pow(beta, 2) + cos(3*b0*beta*lambda + k*lambda*pow(v, -1/3))*pow(beta, 2) + 22*cos(b0*beta*lambda)*(1 + pow(beta, 2)) - 72*cos(2*b0*beta*lambda)*(1 + pow(beta, 2)))*pow(kappa, -1)*pow(lambda, -2)*sin(2*b0*beta*lambda)*sin(k*lambda*pow(v, -1/3)) ;  
    tmp[4,19] = lamphi*gPi ;  
    tmp[4,20] = -((dV1t + dV2t)*v*lamphi) ;  
    tmp[5,1] = -2*v*pow(beta, -1)*pow(lambda, -1)*(-1 + cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[5,2] = 0 ;  
    tmp[5,3] = 0 ;  
    tmp[5,4] = 0 ;  
    tmp[5,5] = 0 ;  
    tmp[5,6] = 2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[5,7] = -2*v*(-1 + cos(b0*beta*lambda))*pow(beta, -1)*pow(lambda, -1) ;  
    tmp[5,8] = -2*v*(-1 + cos(b0*beta*lambda))*pow(beta, -1)*pow(lambda, -1) ;  
    tmp[5,9] = -2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[5,10] = 0 ;  
    tmp[5,11] = 0 ;  
    tmp[5,12] = 0 ;  
    tmp[5,13] = 0 ;  
    tmp[5,14] = 0 ;  
    tmp[5,15] = -2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[5,16] = 2*v*(-1 + cos(b0*beta*lambda))*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1) ;  
    tmp[5,17] = 2*v*(-1 + cos(b0*beta*lambda))*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1) ;  
    tmp[5,18] = 2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[5,19] = 0 ;  
    tmp[5,20] = 0 ;  
    tmp[6,1] = 0 ;  
    tmp[6,2] = 0 ;  
    tmp[6,3] = 0 ;  
    tmp[6,4] = 2*v*pow(beta, -1)*pow(lambda, -1)*(1 + cos(b0*beta*lambda)*(-cos(k*lambda*pow(v, -1/3)) + im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[6,5] = -2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[6,6] = 0 ;  
    tmp[6,7] = 0 ;  
    tmp[6,8] = 2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[6,9] = -2*v*(-1 + cos(b0*beta*lambda))*pow(beta, -1)*pow(lambda, -1) ;  
    tmp[6,10] = 0 ;  
    tmp[6,11] = 0 ;  
    tmp[6,12] = 0 ;  
    tmp[6,13] = -4*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*pow(sin((b0*beta*lambda)/2), 2)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[6,14] = 2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[6,15] = 0 ;  
    tmp[6,16] = 0 ;  
    tmp[6,17] = -2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[6,18] = 2*v*(-1 + cos(b0*beta*lambda))*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1) ;  
    tmp[6,19] = 0 ;  
    tmp[6,20] = 0 ;  
    tmp[7,1] = 0 ;  
    tmp[7,2] = 0 ;  
    tmp[7,3] = 0 ;  
    tmp[7,4] = 2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[7,5] = 2*v*pow(beta, -1)*pow(lambda, -1)*(1 + cos(b0*beta*lambda)*(-cos(k*lambda*pow(v, -1/3)) + im*sin(k*lambda*pow(v, -1/3)))) ;  
    tmp[7,6] = -2*v*(-1 + cos(b0*beta*lambda))*pow(beta, -1)*pow(lambda, -1) ;  
    tmp[7,7] = -2*v*pow(beta, -1)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[7,8] = 0 ;  
    tmp[7,9] = 0 ;  
    tmp[7,10] = 0 ;  
    tmp[7,11] = 0 ;  
    tmp[7,12] = 0 ;  
    tmp[7,13] = -2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[7,14] = -4*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*pow(sin((b0*beta*lambda)/2), 2)*(cos(k*lambda*pow(v, -1/3)) - im*sin(k*lambda*pow(v, -1/3))) ;  
    tmp[7,15] = 2*v*(-1 + cos(b0*beta*lambda))*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1) ;  
    tmp[7,16] = 2*v*pow(b0, -1)*pow(beta, -2)*pow(lambda, -1)*sin(b0*beta*lambda) ;  
    tmp[7,17] = 0 ;  
    tmp[7,18] = 0 ;  
    tmp[7,19] = 0 ;  
    tmp[7,20] = 0 ;  
 end 