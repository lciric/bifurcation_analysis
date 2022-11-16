%  Copyright 2021 Aix-Marseille Université
% "Licensed to the Apache Software Foundation (ASF) under one or more contributor license agreements; and to You under the Apache License, Version 2.0. "
function [dev_EA,dev_EB, dev_IA,dev_IB,dev_c_eAeA,dev_c_eAeB,dev_c_eAiA,dev_c_eAiB,dev_c_eBeB,dev_c_eBiA,dev_c_eBiB, dev_c_iAiA,dev_c_iAiB, dev_c_iBiB, dev_W_eA,dev_W_eB]=Zerlaut_model_adap(EA,EB,IA,IB,C_eAeA,C_eAeB,C_eAiA,C_eAiB,C_eBeB,C_eBiA,C_eBiB,C_iAiA,C_iAiB,C_iBiB,W_eA,W_eB,g_L,E_L_e,E_L_i,C_m,E_e,E_i,Q_e,Q_i,tau_e,tau_i,tau_w_e,b_e,N_tot,p_connect,p_exc_AB,p_exc_BA,p_inh_AB,p_inh_BA,g,T,external_input_E_E,external_input_E_I,P_e_0,P_e_1,P_e_2,P_e_3,P_e_4,P_e_5,P_e_6,P_e_7,P_e_8,P_e_9,P_i_0,P_i_1,P_i_2,P_i_3,P_i_4,P_i_5,P_i_6,P_i_7,P_i_8,P_i_9)
    df = 1e-7;
    N_eA = N_tot*(1-g)/2;
    N_eB = N_tot*(1-g)/2;
    N_iA = N_tot*g/2;
    N_iB = N_tot*g/2;
    N=[N_eA,N_eB,N_iA,N_iB];
    W_iA = 0.0;
    W_iB = 0.0;
    W_eA = W_eA*1e3; % change unit for uniform the dimension for the bifurcation
    W_eB = W_eB*1e3; % change unit for uniform the dimension for the bifurcation
    external_input_I_E = external_input_E_E; %same excitatory external input to IA and IB external_input_I_E=external_input_IA_E=external_input_IB_E
    external_input_I_I = external_input_E_I;
    p=zeros(4,4);
    p(1,1)=p_connect; %e1->e1
    p(3,1)=p_connect; %e1->i1
    p(2,2)=p_connect;%e2->e2
    p(4,2)=p_connect;%e2->i2
    p(1,3)=p_connect;%i1->e1
    p(3,3)=p_connect;%i1->i1
    p(2,4)=p_connect;%i2->e2
    p(4,4)=p_connect;%i2->i2

    p(2,1)=p_exc_AB; %e1->e2
    p(4,1)=p_exc_AB; %e1->i2
    p(1,2)=p_exc_AB;%p_exc_BA; %e2->e1
    p(3,2)=p_exc_AB;%p_exc_BA; %e2->i1

    p(2,3)=p_inh_AB; %i1->e2
    p(4,3)=p_inh_AB; %i1->i2
    p(1,4)=p_inh_BA; %i2->e1
    p(3,4)=p_inh_BA; %i2->i1

    %[p(0,0),p(2,0),p(1,1),p(3,1)]=deal(p_connect,p_connect,p_connect,p_connect); %e1->e1 e1->i1 e2->e2 e2->i2
    %[p(0,2),p(2,2),p(1,3),p(3,3)]=deal(p_connect,p_connect,p_connect,p_connect); %i1->e1 i1->i1 i2->e2 i2->i2
    %[p(1,0),p(3,0)]=deal(p_exc_AB,p_exc_AB); %e1->e2 e1->i2
    %[p(0,1),p(2,1)]=deal(p_exc_BA,p_exc_BA); %e2->e1 e2->i1
    %[p(1,2),p(3,2)]=deal(p_inh_AB,p_inh_AB); %i1->e2 i1->i2
    %[p(0,3),p(2,3)]=deal(p_inh_BA,p_inh_BA); %i2->e1 i2->i1

    function  [mu_V, sigma_V, T_V]=get_fluct_regime_vars(Fe, Fi, W, E_L)
        fe = (Fe+1.e-6).*(1.-g).*p_connect.*N_tot/2;
        fi = (Fi+1.e-6).*g.*p_connect.*N_tot/2;
        mu_Ge = Q_e.*tau_e.*fe;
        mu_Gi = Q_i.*tau_i.*fi;  
        mu_G = g_L+mu_Ge+mu_Gi;  
        T_m = C_m./mu_G;
        mu_V = (mu_Ge.*E_e+mu_Gi.*E_i+g_L.*E_L-W)./mu_G ;
        U_e = Q_e./mu_G.*(E_e-mu_V);
        U_i = Q_i./mu_G.*(E_i-mu_V);
        sigma_V = sqrt(fe.*(U_e.*tau_e)^2/(2.*(tau_e+T_m))+fi.*(U_i.*tau_i)^2./(2.*(tau_i+T_m)));
        T_V_numerator = (fe.*(U_e.*tau_e)^2 + fi.*(U_i.*tau_i)^2);
        T_V_denominator = (fe.*(U_e.*tau_e)^2./(tau_e+T_m) + fi.*(U_i.*tau_i)^2./(tau_i+T_m));
        T_V = T_V_numerator./T_V_denominator;
    end

    function [V_thre]=threshold_func(muV, sigmaV, TvN, P0, P1, P2, P3, P4, P5, P6, P7, P8, P9)
        muV0 =  -60.0;
        DmuV0 = 10.0;
        sV0=  4.0;
        DsV0 = 6.0;
        TvN0=  0.5;
        DTvN0 = 1.;
        V = (muV-muV0)./DmuV0;
        S = (sigmaV-sV0)./DsV0;
        T_eq = (TvN-TvN0)./DTvN0;
        V_thre= P0 + P1.*V + P2.*S + P3.*T_eq + P4.*(V^2) + P5.*(S^2) + P6.*(T_eq^2) + P7.*V.*S + P8.*V.*T_eq + P9.*S.*T_eq;
    end
    function [f_out]=estimate_firing_rate(muV, sigmaV, Tv, Vthre)
        if imag(sigmaV) ~= 0.0
            fprintf('bad')
%             error('bad')
        end
        f_out = erfc((Vthre-muV) ./ (sqrt(2).*sigmaV)) ./ (2.*Tv);
    end     
    function f_out=TF_e( fe, fi, W)
            [mu_V, sigma_V, T_V ]= get_fluct_regime_vars(fe, fi, W, E_L_e);
            V_thre = threshold_func(mu_V, sigma_V, T_V.*g_L./C_m,...
                P_e_0, P_e_1, P_e_2, P_e_3, P_e_4, P_e_5, P_e_6, P_e_7, P_e_8, P_e_9);
            V_thre =V_thre .* 1e3;
            f_out = estimate_firing_rate(mu_V, sigma_V, T_V, V_thre);
    end
    function f_out=TF_i( fe, fi, W)
            [mu_V, sigma_V, T_V ]= get_fluct_regime_vars(fe, fi, W, E_L_i);
            V_thre = threshold_func(mu_V, sigma_V, T_V.*g_L./C_m,...
                P_i_0, P_i_1, P_i_2, P_i_3, P_i_4, P_i_5, P_i_6, P_i_7, P_i_8, P_i_9);
            V_thre =V_thre .* 1e3;  
            f_out = estimate_firing_rate(mu_V, sigma_V, T_V, V_thre);
    end
    function f_out=diff_fe(TF, fe, fi, W)
       f_out= (TF(fe+df, fi, W)-TF(fe-df, fi, W))./(2*df*1e3);
    end 
    function f_out=diff_fi(TF, fe, fi, W)
        f_out=(TF(fe, fi+df, W)-TF(fe, fi-df, W))./(2*df*1e3);
    end
    function f_out= diff2_fe_fe(TF, fe, fi, W)
        f_out= (TF(fe+df, fi, W)-2.*TF(fe,fi,W)+TF(fe-df, fi, W))./((df*1e3)^2);
    end
    function f_out=diff2_fi_fe(TF, fe, fi, W)
        f_out=(diff_fi(TF, fe+df, fi, W)-diff_fi(TF, fe-df, fi, W))/(2*df*1e3);
    end
    function f_out=diff2_fe_fi(TF, fe, fi, W)
        f_out= (diff_fe(TF, fe, fi+df, W)-diff_fe(TF,fe, fi-df, W))./(2*df*1e3);
    end
    function f_out=diff2_fi_fi(TF, fe, fi, W)
        f_out= (TF(fe, fi+df, W)-2*TF(fe, fi, W)+TF(fe, fi-df, W))/((df*1e3)^2);
    end
    
    numb_sub_exc=2;
    numb_sub_inh=2;
    N0_e=8000;
    N0_i=2000;
    W=[W_eA,W_eB,W_iA,W_iB];
    C_eBeA=C_eAeB;
    C_iAeA=C_eAiA;
    C_iAeB=C_eBiA;
    C_iBeA=C_eAiB;
    C_iBeB=C_eBiB;
    C_iBiA=C_iAiB;
    x0=[EA,EB,IA,IB,C_eAeA,C_eAeB,C_eAiA,C_eAiB,C_eBeA,C_eBeB,C_eBiA,C_eBiB,C_iAeA,C_iAeB,C_iAiA,C_iAiB,C_iBeA,C_iBeB,C_iBiA,C_iBiB];
    vsec_vec=zeros(4,2);

    for i=1:4 
        for j=1:numb_sub_exc % excitatory input
            vsec_vec(i,1) = vsec_vec(i,1) + x0(j)*N(j)/N0_e*p(i,j)/(5e-2); % initially only divide by numb_sub_exc : true if populations are evenly distributed ! => /2= * 4000/8000  
        end

        for j=1:numb_sub_inh % inhibitory input
            vsec_vec(i,2) =  vsec_vec(i,2)+ x0(j+numb_sub_exc)*N(j+numb_sub_exc)/N0_i*p(i,j+numb_sub_exc)/(5e-2);
        end
    end
    ext_drive_exc=[external_input_E_E,external_input_E_E,external_input_I_E,external_input_I_E];
    ext_drive_inh=[external_input_E_I,external_input_E_I,external_input_I_I,external_input_I_I];
    
    p_pois=0.05*ones(4);
    for i=1:4  % external drive
        vsec_vec(i,1)=vsec_vec(i,1)+ext_drive_exc(i)*p_pois(i)/(5e-2)*N(1)/N0_e;%(p(i,1)*N(1)+p(i,2)*N(2))/(N0_e*5e-2);%(p(i,1)+p(i,2))); %excitatory external input 
        vsec_vec(i,2)=vsec_vec(i,2)+ext_drive_inh(i)*p_pois(i)/(5e-2)*N(3)/N0_i;%(p(i,3)*N(3)+p(i,4)*N(4))/(N0_i*5e-2);%(p(i,3)+p(i,4))); %inhibitory external input
    end

    Delta1=zeros(4,4);
    Delta2=zeros(4,4,4);

    Eval_TF=[TF_e(vsec_vec(1,1),vsec_vec(1,2),W_eA),TF_e(vsec_vec(2,1),vsec_vec(2,2),W_eB),TF_i(vsec_vec(3,1),vsec_vec(3,2),W_iA),TF_i(vsec_vec(4,1),vsec_vec(4,2),W_iB)];

    for i=1:numb_sub_exc      
        for k=1:2             
            Delta1(i,k)=diff_fe(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*p(i,k)/(5e-2);
        end

        for k=3:4
            Delta1(i,k)=diff_fi(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*p(i,k)/(5e-2);
        end
    end

    for i=3:4      
        for k=1:2             
            Delta1(i,k)=diff_fe(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*p(i,k)/(5e-2);
        end

        for k=3:4
            Delta1(i,k)=diff_fi(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*p(i,k)/(5e-2); 
        end
    end

    for i=1:2
        for k=1:2
            for j=1:2
                Delta2(i,k,j)=diff2_fe_fe(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*N(j)/N0_e*p(i,k)/(5e-2)*p(i,j)/(5e-2); 
            end

            for j=3:4
                Delta2(i,k,j)=diff2_fe_fi(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*N(j)/N0_i*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end
        end
        for k=3:4
            for j=1:2
                Delta2(i,k,j)=diff2_fi_fe(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*N(j)/N0_e*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end

            for j=3:4
                Delta2(i,k,j)=diff2_fi_fi(@TF_e,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*N(j)/N0_i*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end
        end
    end

    for i=3:4
        for k=1:2
            for j=1:2
                Delta2(i,k,j)=diff2_fe_fe(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*N(j)/N0_e*p(i,k)/(5e-2)*p(i,j)/(5e-2); 
            end
            for j=3:4
                Delta2(i,k,j)=diff2_fe_fi(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_e*N(j)/N0_i*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end
        end
        for k=3:4
            for j=1:2
                Delta2(i,k,j)=diff2_fi_fe(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*N(j)/N0_e*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end
            for j=3:4
                Delta2(i,k,j)=diff2_fi_fi(@TF_i,vsec_vec(i,1),vsec_vec(i,2),W(i))*N(k)/N0_i*N(j)/N0_i*p(i,k)/(5e-2)*p(i,j)/(5e-2);
            end
        end
    end

    deriv=zeros(20);

    for i=1:4
        deriv(i)=(Eval_TF(i)-x0(i))/T;

        deriv(4*(i-1)+i+4)=deriv(4*(i-1)+i+4)+(Eval_TF(i)*(1./T-Eval_TF(i))/N(i))/T;
        for j=1:4
            index=4*(i-1)+j+4; % define here the location of the considered c variable and its derivative
            for k=1:4 
                deriv(i)=deriv(i)+(0.5*Delta2(i,j,k)*x0(4*(j-1)+k+4))/T;
                index_ik=4*(i-1)+k+4;
                index_jk=4*(j-1)+k+4;
                deriv(index)=deriv(index)+(x0(index_jk)*Delta1(i,k)+x0(index_ik)*Delta1(j,k))/T;
            end   
            deriv(index)=deriv(index)+((Eval_TF(i)-x0(i))*(Eval_TF(j)-x0(j))-2*x0(index))/T;
        end
    end
  
    dev_EA=deriv(1);
    dev_EB=deriv(2);
    dev_IA=deriv(3);
    dev_IB=deriv(4);
    dev_c_eAeA=deriv(5);
    dev_c_eAeB=deriv(6);
    dev_c_eAiA=deriv(7);
    dev_c_eAiB=deriv(8);
    dev_c_eBeA=deriv(9);
    dev_c_eBeB=deriv(10);
    dev_c_eBiA=deriv(11);
    dev_c_eBiB=deriv(12);
    dev_c_iAeA=deriv(13);
    dev_c_iAeB=deriv(14);
    dev_c_iAiA=deriv(15);
    dev_c_iAiB=deriv(16);
    dev_c_iBeA=deriv(17);
    dev_c_iBeB=deriv(18);
    dev_c_iBiA=deriv(19);
    dev_c_iBiB=deriv(20);

    dev_W_eA = -W_eA/tau_w_e+b_e*x0(1);  %(E+external_input_E_E);
    dev_W_eA = dev_W_eA*1e-3;
    dev_W_eB = -W_eB/tau_w_e+b_e*x0(2);
    dev_W_eB = dev_W_eB*1e-3;


    %dev_EA_old = (...
    %            .5.*C_ee.*diff2_fe_fe(@TF_e, vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)+...
    %            .5.*C_ei.*diff2_fe_fi(@TF_e, vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)+...
    %            .5.*C_ei.*diff2_fi_fe(@TF_e, vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)+...
    %            .5.*C_ii.*diff2_fi_fi(@TF_e, vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)+...
    %%            TF_e(vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)-EA)./T;%%%%%%%

    %dev_EB_old = (...
    %            .5.*C_ee.*diff2_fe_fe(@TF_e, vsec_vec(2,1)+external_input_E_E, vsec_vec(2,2)+external_input_E_I, W_e)+...
    %            .5.*C_ei.*diff2_fe_fi(@TF_e, vsec_vec(2,1)+external_input_E_E, vsec_vec(2,2)+external_input_E_I, W_e)+...
    %            .5.*C_ei.*diff2_fi_fe(@TF_e, vsec_vec(2,1)+external_input_E_E, vsec_vec(2,2)+external_input_E_I, W_e)+...
    %            .5.*C_ii.*diff2_fi_fi(@TF_e, vsec_vec(2,1)+external_input_E_E, vsec_vec(2,2)+external_input_E_I, W_e)+...
    %            TF_e(vsec_vec(2,1)+external_input_E_E, vsec_vec(2,2)+external_input_E_I, W_e)-EB)./T;

    %dev_IA_old  = (...
    %            .5.*C_ee.*diff2_fe_fe(@TF_i, vsec_vec(3,1)+external_input_I_E, vsec_vec(3,2)+external_input_I_I, W_i)+...
    %            .5.*C_ei.*diff2_fe_fi(@TF_i, vsec_vec(3,1)+external_input_I_E, vsec_vec(3,2)+external_input_I_I, W_i)+...
    %            .5.*C_ei.*diff2_fi_fe(@TF_i, vsec_vec(3,1)+external_input_I_E, vsec_vec(3,2)+external_input_I_I, W_i)+...
    %            .5.*C_ii.*diff2_fi_fi(@TF_i, vsec_vec(3,1)+external_input_I_E, vsec_vec(3,2)+external_input_I_I, W_i)+...
    %            TF_i(vsec_vec(3,1)+external_input_I_E, vsec_vec(3,2)+external_input_I_I, W_i)-IA)./T;

    %dev_IB_old  = (...
    %            .5.*C_ee.*diff2_fe_fe(@TF_i, vsec_vec(4,1)+external_input_I_E, vsec_vec(4,2)+external_input_I_I, W_i)+...
    %            .5.*C_ei.*diff2_fe_fi(@TF_i, vsec_vec(4,1)+external_input_I_E, vsec_vec(4,2)+external_input_I_I, W_i)+...
    %            .5.*C_ei.*diff2_fi_fe(@TF_i, vsec_vec(4,1)+external_input_I_E, vsec_vec(4,2)+external_input_I_I, W_i)+...
    %            .5.*C_ii.*diff2_fi_fi(@TF_i, vsec_vec(4,1)+external_input_I_E, vsec_vec(4,2)+external_input_I_I, W_i)+...
    %            TF_i(vsec_vec(4,1)+external_input_I_E, vsec_vec(4,2)+external_input_I_I, W_i)-IB)./T;    
    
    %dev_c_eAeA_old = (...
    %            TF_e(vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)./N_e.*...
    %            (1./T-TF_e(vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e))+...
    %            (TF_e(vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)-EA)^2+...
    %            2.*C_eAeA.*diff_fe(@TF_e, vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)+...
    %            2.*C_ei.*diff_fi(@TF_i, E+external_input_I_E, I+external_input_I_I, W_i)+...
    %            -2.*C_ee)./T;

    %dev_c_eAeB_old = (...
    %            TF_e(vsec_vec(1,1)+external_input_E_E, vsec_vec(1,2)+external_input_E_I, W_e)./N_e.*...
    %            (1./T-TF_e(E+external_input_E_E, I+external_input_E_I, W_e))+...
    %            (TF_e(E+external_input_E_E, I+external_input_E_I, W_e)-E)^2+...
    %            2.*C_ee.*diff_fe(@TF_e, E+external_input_E_E, I+external_input_E_I, W_e)+...
    %            2.*C_ei.*diff_fi(@TF_i, E+external_input_I_E, I+external_input_I_I, W_i)+...
    %            -2.*C_ee)./T;
            
     %dev_c_ei = ((TF_e(E+external_input_E_E, I+external_input_E_I, W_e)-E).*...
     %           (TF_i(E+external_input_I_E, I+external_input_I_I, W_i)-I)+...
     %           C_ee.*diff_fe(@TF_e, E+external_input_E_E, I+external_input_E_I, W_e)+...
     %           C_ei.*diff_fe(@TF_i, E+external_input_I_E, I+external_input_I_I, W_i)+...
     %           C_ei.*diff_fi(@TF_e, E+external_input_E_E, I+external_input_E_I, W_e)+...
     %           C_ii.*diff_fi(@TF_i, E+external_input_I_E, I+external_input_I_I, W_i)+...
     %           -2.*C_ei)./T;

     %dev_c_ii = (...
     %           TF_i(E+external_input_I_E, I+external_input_I_I, W_i)./N_i.*...
     %           (1./T-TF_i(E+external_input_I_E, I+external_input_I_I, W_i))+...
     %           (TF_i(E+external_input_I_E, I+external_input_I_I, W_i)-I)^2+...
     %           2.*C_ii.*diff_fi(@TF_i, E+external_input_I_E, I+external_input_I_I, W_i)+...
     %           2.*C_ei.*diff_fe(@TF_e, E+external_input_E_E, I+external_input_E_I, W_e)+...
     %           -2.*C_ii)./T; 
     %dev_W = -W_e/tau_w_e+b_e*(E+external_input_E_E);
     %dev_W = dev_W*1e-3;
     %error_EA=dev_EA-dev_EA_old;
    % error_EB=dev_EB-dev_EB_old;
    % error_IA=dev_IA-dev_IA_old;
    % error_IB=dev_IB-dev_IB_old;
    % error_c_eAeA=dev_c_eAeA-dev_c_eAeA_old;
    % error_c_eAeB=dev_c_eAeB-dev_c_eAeB_old;%

end