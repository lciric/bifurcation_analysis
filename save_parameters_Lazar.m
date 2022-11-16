%SET PARAMETERS
%SET PARAMETERS

parameter_test_Lazar.w_eA=0;
parameter_test_Lazar.w_eB=0;
parameter_test_Lazar.w_iA=0;
parameter_test_Lazar.w_iB=0;

%w_eA=0;
%w_eB=0;
%w_iA=0;
%w_iB=0;
parameter_test_Lazar.g_L=10.0;
parameter_test_Lazar.E_L_i=-68.;
parameter_test_Lazar.E_L_e=-63.;
parameter_test_Lazar.C_m=200.0;
parameter_test_Lazar.E_ex=0.0;
parameter_test_Lazar.E_e=parameter_test_Lazar.E_ex;
parameter_test_Lazar.E_in=-80.0;
parameter_test_Lazar.E_i=parameter_test_Lazar.E_in;
parameter_test_Lazar.Q_e=1.5000;
parameter_test_Lazar.Q_i=5.0;
parameter_test_Lazar.tau_syn_ex=5.0;
parameter_test_Lazar.tau_e=parameter_test_Lazar.tau_syn_ex
parameter_test_Lazar.tau_syn_in=5.0;
parameter_test_Lazar.tau_i=parameter_test_Lazar.tau_syn_in;
parameter_test_Lazar.N_tot=20000;
parameter_test_Lazar.p_connect=0.0500;
parameter_test_Lazar.p_exc_AB=0.000;
parameter_test_Lazar.p_exc_BA=parameter_test_Lazar.p_exc_AB;
parameter_test_Lazar.p_inh_AB=0.0;
parameter_test_Lazar.p_inh_BA=0.0;
parameter_test_Lazar.g=0.2000;
parameter_test_Lazar.T=5;
parameter_test_Lazar.P_e_0=-0.0492;
parameter_test_Lazar.P_e_1=0.0018;
parameter_test_Lazar.P_e_2=-8.0192e-04;
parameter_test_Lazar.P_e_3=-0.0038;
parameter_test_Lazar.P_e_4=2.3460e-04;
parameter_test_Lazar.P_e_5=0.0040;
parameter_test_Lazar.P_e_6=0.0018;
parameter_test_Lazar.P_e_7=-2.1594e-05;
parameter_test_Lazar.P_e_8=1.8049e-04;
parameter_test_Lazar.P_e_9=0.0039;
parameter_test_Lazar.P_i_0=-0.0508;
parameter_test_Lazar.P_i_1=0.0019;
parameter_test_Lazar.P_i_2=-3.6140e-04;
parameter_test_Lazar.P_i_3=-3.9234e-04;
parameter_test_Lazar.P_i_4=5.4666e-04;
parameter_test_Lazar.P_i_5=0.0017;
parameter_test_Lazar.P_i_6=-0.0023;
parameter_test_Lazar.P_i_7=9.4091e-04;
parameter_test_Lazar.P_i_8=0.0014;
parameter_test_Lazar.P_i_9=-0.0011;

%parameter_test_Lazar.P_e_0=-4.98e-02; %-0.0492;
%parameter_test_Lazar.P_e_1=5.06e-03;%0.0018;
%parameter_test_Lazar.P_e_2=-2.5e-02;%-8.0192e-04;
%parameter_test_Lazar.P_e_3=1.4e-03;%-0.0038;
%parameter_test_Lazar.P_e_4=-4.1e-04;% 2.3460e-04;
%parameter_test_Lazar.P_e_5=1.05e-02 ;%0.0040;
%parameter_test_Lazar.P_e_6=-3.6e-02;%0.0018;
%parameter_test_Lazar.P_e_7=7.4e-03;%-2.1594e-05;
%parameter_test_Lazar.P_e_8=1.2e-03;%1.8049e-04;
%parameter_test_Lazar.P_e_9=-4.07e-02; %0.0039;
%parameter_test_Lazar.P_i_0=-5.14e-02; %-0.0508;
%parameter_test_Lazar.P_i_1=4.0e-03; %0.0019;
%parameter_test_Lazar.P_i_2=-8.3e-03;%-3.6140e-04;
%parameter_test_Lazar.P_i_3=2.0e-04; %-3.9234e-04;
%parameter_test_Lazar.P_i_4=-5.0e-04;%5.4666e-04;
%parameter_test_Lazar.P_i_5= 1.4e-03;%0.0017;
%parameter_test_Lazar.P_i_6=-1.46e-02;%-0.0023;
%parameter_test_Lazar.P_i_7=4.5e-03; %9.4091e-04;
%parameter_test_Lazar.P_i_8=2.8e-03;%0.0014;
%parameter_test_Lazar.P_i_9=-1.53e-02;%-0.0011;
parameter_test_Lazar.external_input_E_E=0.;%2.269354939363481e-04;%0.; % 0.001;
parameter_test_Lazar.external_input_E_I=0;
parameter_test_Lazar.external_input_I_E=0;
parameter_test_Lazar.external_input_I_I=0;
parameter_test_Lazar.tau_w_e=500;
parameter_test_Lazar.b_e=0;

%y=[g_L,E_L_e,E_L_i,C_m,E_e,E_i,Q_e,Q_i,tau_e,tau_i,tau_w_e,b_e,N_tot,p_connect,g,T,external_input_E_E,external_input_E_I,P_e_0,P_e_1,P_e_2,P_e_3,P_e_4,P_e_5,P_e_6,P_e_7,P_e_8,P_e_9,P_i_0,P_i_1,P_i_2,P_i_3,P_i_4,P_i_5,P_i_6,P_i_7,P_i_8,P_i_9]
%save('parameter_test.mat','y','-mat')
save('parameter_test_Lazar.mat','-mat')

%save('parameter.mat',"w_eA","w_eB","w_iA","w_iB","g_L","E_L_i","C_m","E_ex","E_in","Q_e","Q_i","tau_syn_ex",'tau_syn_in',"N_tot","p_connect", ...

%save('parameter.mat',"w_e","w_i","g_L","E_L_i","C_m","E_ex","E_in","Q_e","Q_i","tau_syn_ex",'tau_syn_in',"N_tot","p_connect", ...
%    "g","T","P_e_0","P_e_1","P_e_2","P_e_3","P_e_4","P_e_5","P_e_6","P_e_7","P_e_8","P_e_9","P_i_0","P_i_1","P_i_2", ...
%    "P_i_3","P_i_4","P_i_5","P_i_6","P_i_7","P_i_8","P_i_9","external_input_E_E","external_input_E_I", ...
%    "external_input_I_E","external_input_I_I","tau_w_e","b_e")    
    %"p_exc_AB","p_exc_BA","p_inh_AB","p_inh_BA", ...
    %"g","T","P_e_0","P_e_1","P_e_2","P_e_3","P_e_4","P_e_5","P_e_6","P_e_7","P_e_8","P_e_9","P_i_0","P_i_1","P_i_2", ...
    %"P_i_3","P_i_4","P_i_5","P_i_6","P_i_7","P_i_8","P_i_9","external_input_E_E","external_input_E_I", ...
    %"external_input_I_E","external_input_I_I","tau_w_e","b_e")