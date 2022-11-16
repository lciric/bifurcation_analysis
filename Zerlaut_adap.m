function out = Zerlaut_adap
out{1} = @init;
out{2} = @fun_eval;
out{3} = [];
out{4} = [];
out{5} = [];
out{6} = [];
out{7} = [];
out{8} = [];
out{9} = [];
out{10} = @Boundary_up_v_eA;
out{11} = @Boundary_low_v_eA;
out{12} = @Boundary_up_v_eB;
out{13} = @Boundary_low_v_eB;
out{14} = @Boundary_up_v_iA;
out{15} = @Boundary_low_v_iA;
out{16} = @Boundary_up_v_iB;
out{17} = @Boundary_low_v_iB;
out{18} = @Boundary_up_w_eA;
out{19} = @Boundary_low_w_eA;
out{20} = @Boundary_up_w_eB;
out{21} = @Boundary_low_w_eB;
out{22} = @Boundary_up_w_iA;
out{23} = @Boundary_low_w_iA;
out{24} = @Boundary_up_w_iB;
out{25} = @Boundary_low_w_iB;
out{26} = @Boundary_up_g_L;
out{27} = @Boundary_low_g_L;
out{28} = @Boundary_up_E_L_e;
out{29} = @Boundary_low_E_L_e;
out{30} = @Boundary_up_E_L_i;
out{31} = @Boundary_low_E_L_i;
out{32} = @Boundary_up_C_m;
out{33} = @Boundary_low_C_m;
out{34} = @Boundary_up_E_e;
out{35} = @Boundary_low_E_e;
out{36} = @Boundary_up_E_i;
out{37} = @Boundary_low_E_i;
out{38} = @Boundary_up_Q_e;
out{39} = @Boundary_low_Q_e;
out{40} = @Boundary_up_Q_i;
out{41} = @Boundary_low_Q_i;
out{42} = @Boundary_up_tau_e;
out{43} = @Boundary_low_tau_e;
out{44} = @Boundary_up_tau_i;
out{45} = @Boundary_low_tau_i;
out{46} = @Boundary_up_N_tot;
out{47} = @Boundary_low_N_tot;
out{48} = @Boundary_up_p_connect;
out{49} = @Boundary_low_p_connect;
out{50} = @Boundary_up_p_exc_AB;
out{51} = @Boundary_low_p_exc_AB;
out{52} = @Boundary_up_p_exc_BA;
out{53} = @Boundary_low_p_exc_BA;
out{54} = @Boundary_up_p_inh_AB;
out{55} = @Boundary_low_p_inh_AB;
out{56} = @Boundary_up_p_inh_BA;
out{57} = @Boundary_low_p_inh_AB;
out{58} = @Boundary_up_g;
out{59} = @Boundary_low_g;
out{60} = @Boundary_up_T;
out{61} = @Boundary_low_T;
out{62} = @Boundary_up_external_input_E_E;
out{63} = @Boundary_low_external_input_E_E;
out{64} = @Boundary_up_external_input_E_I;
out{65} = @Boundary_low_external_input_E_I;
out{66} = @Boundary_up_external_input_I_E;
out{67} = @Boundary_low_external_input_I_E;
out{68} = @Boundary_up_external_input_I_I;
out{69} = @Boundary_low_external_input_I_I;
out{70} = @Boundary_up_P_e_0;
out{71} = @Boundary_low_P_e_0;
out{72} = @Boundary_up_P_e_1;
out{73} = @Boundary_low_P_e_1;
out{74} = @Boundary_up_P_e_2;
out{75} = @Boundary_low_P_e_2;
out{76} = @Boundary_up_P_e_3;
out{77} = @Boundary_low_P_e_3;
out{78} = @Boundary_up_P_e_4;
out{79} = @Boundary_low_P_e_4;
out{80} = @Boundary_up_P_e_5;
out{81} = @Boundary_low_P_e_5;
out{82} = @Boundary_up_P_e_6;
out{83} = @Boundary_low_P_e_6;
out{84} = @Boundary_up_P_e_7;
out{85} = @Boundary_low_P_e_7;
out{86} = @Boundary_up_P_e_8;
out{87} = @Boundary_low_P_e_8;
out{88} = @Boundary_up_P_e_9;
out{89} = @Boundary_low_P_e_9;
out{90} = @Boundary_up_P_i_0;
out{91} = @Boundary_low_P_i_0;
out{92} = @Boundary_up_P_i_1;
out{93} = @Boundary_low_P_i_1;
out{94} = @Boundary_up_P_i_2;
out{95} = @Boundary_low_P_i_2;
out{96} = @Boundary_up_P_i_3;
out{97} = @Boundary_low_P_i_3;
out{98} = @Boundary_up_P_i_4;
out{99} = @Boundary_low_P_i_4;
out{100} = @Boundary_up_P_i_5;
out{101} = @Boundary_low_P_i_5;
out{102} = @Boundary_up_P_i_6;
out{103} = @Boundary_low_P_i_6;
out{104} = @Boundary_up_P_i_7;
out{105} = @Boundary_low_P_i_7;
out{106} = @Boundary_up_P_i_8;
out{107} = @Boundary_low_P_i_8;
out{108} = @Boundary_up_P_i_9;
out{109} = @Boundary_low_P_i_9;


% --------------------------------------------------------------------------
function dydt = fun_eval(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% fprintf("%f, %f, %f, %f, %f\n", kmrgd(1),kmrgd(2),kmrgd(3),kmrgd(4),kmrgd(5));
if ~isreal(kmrgd)
    warning('not real argument')
    %[v_eA,v_eB,v_iA,v_iB,c_eAeA,c_eAeB,c_eAiA,c_eAiB,c_eBeB,c_eBiA,c_eBiB,c_iAiA,c_iAiB,c_iBiB,w_eA,w_eB]=Zerlaut_model_adap(abs(kmrgd(1)),abs(kmrgd(2)),abs(kmrgd(3)),abs(kmrgd(4)),abs(kmrgd(5)),abs(kmrgd(6)),par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9);
    [v_eA,v_eB,v_iA,v_iB,c_eAeA,c_eAeB,c_eAiA,c_eAiB,c_eBeB,c_eBiA,c_eBiB,c_iAiA,c_iAiB,c_iBiB,w_eA,w_eB]=Zerlaut_model_adap(abs(kmrgd(1)),abs(kmrgd(2)),abs(kmrgd(3)),abs(kmrgd(4)),abs(kmrgd(5)),abs(kmrgd(6)),abs(kmrgd(7)),abs(kmrgd(8)),abs(kmrgd(9)),abs(kmrgd(10)),abs(kmrgd(11)),abs(kmrgd(12)),abs(kmrgd(13)),abs(kmrgd(14)),abs(kmrgd(15)),abs(kmrgd(16)),par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9);

    else
    %[v_eA,v_eB,v_iA,v_iB,c_eAeA,c_eAeB,c_eAiA,c_eAiB,c_eBeB,c_eBiA,c_eBiB,c_iAiA,c_iAiB,c_iBiB,w_eA,w_eB]=Zerlaut_model_adap(kmrgd(1),kmrgd(2),kmrgd(3),kmrgd(4),kmrgd(5),kmrgd(6),par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9);
    [v_eA,v_eB,v_iA,v_iB,c_eAeA,c_eAeB,c_eAiA,c_eAiB,c_eBeB,c_eBiA,c_eBiB,c_iAiA,c_iAiB,c_iBiB,w_eA,w_eB]=Zerlaut_model_adap(kmrgd(1),kmrgd(2),kmrgd(3),kmrgd(4),kmrgd(5),kmrgd(6),kmrgd(7),kmrgd(8),kmrgd(9),kmrgd(10),kmrgd(11),kmrgd(12),kmrgd(13),kmrgd(14),kmrgd(15),kmrgd(16),par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9);

end
dydt=[v_eA;v_eB;v_iA;v_iB;c_eAeA;c_eAeB;c_eAiA;c_eAiB;c_eBeB;c_eBiA;c_eBiB;c_iAiA;c_iAiB;c_iBiB;w_eA;w_eB];  %[v_e;v_i;c_ee;c_ei;c_ii;w_e];

% --------------------------------------------------------------------------
function [tspan,y0,options] = init
handles = feval(Zerlau_1);
y0=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; %!!!!!! SECOND ORDER!!!!
options = odeset('Jacobian',[],'JacobianP',[],'Hessians',[],'HessiansP',[]);
tspan = [0 10];

% --------------------------------------------------------------------------
function jac = jacobian(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% --------------------------------------------------------------------------
function jacp = jacobianp(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% --------------------------------------------------------------------------
function hess = hessians(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% --------------------------------------------------------------------------
function hessp = hessiansp(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
%---------------------------------------------------------------------------
function tens3  = der3(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
%---------------------------------------------------------------------------
function tens4  = der4(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
%---------------------------------------------------------------------------
function tens5  = der5(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
%---------------------------------------------------------------------------

function userfun1=Boundary_up_v_eA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
    userfun1=kmrgd(1)-1.0;
function userfun2=Boundary_low_v_eA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun2=kmrgd(1)+1.e-7;

function userfun3=Boundary_up_v_eB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
    userfun3=kmrgd(2)-1.0;
function userfun4=Boundary_low_v_eB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun4=kmrgd(2)+1.e-7;  

function userfun5=Boundary_up_v_iA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun5=kmrgd(3)-1.0;
function userfun6=Boundary_low_v_iA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun6=kmrgd(3)+1.0e-7;

function userfun7=Boundary_up_v_iB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun7=kmrgd(4)-1.0;
function userfun8=Boundary_low_v_iB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun8=kmrgd(4)+1.0e-7;
%% 
%%%%%%W_eA    
function userfun9=Boundary_up_w_eA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% 	userfun5=kmrgd(6)+1.0e-7;
    userfun9=kmrgd(15)+10000.0*1e-3;
function userfun10=Boundary_low_w_eA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun10=kmrgd(15)-10000.0*1e-3;

%% 
%%%%%%W_eB    
function userfun11=Boundary_up_w_eB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
% 	userfun5=kmrgd(6)+1.0e-7;
    userfun11=kmrgd(16)+10000.0*1e-3;
function userfun12=Boundary_low_w_eB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun12=kmrgd(16)-10000.0*1e-3;
%% 
%%%%%%G_L
function userfun13=Boundary_up_g_L(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun13=par_g_L-100.0;
function userfun14=Boundary_low_g_L(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun14=par_g_L-0.1;

%% 
%%%%%%E_L_e
function userfun15=Boundary_up_E_L_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun15=par_E_L_e+50.0;
function userfun16=Boundary_low_E_L_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun16=par_E_L_e+90.0;

 %% 
%%%%%%E_L_i
function userfun17=Boundary_up_E_L_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun17=par_E_L_i+50.0;
function userfun18=Boundary_low_E_L_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun18=par_E_L_i+90.0;
       
%% 
%%%%%%C_m
function userfun19=Boundary_up_C_m(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun19=par_C_m-500.0;
function userfun20=Boundary_low_C_m(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun20=par_C_m-10.0;
   
%% 
%%%%%%E_e
function userfun21=Boundary_up_E_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
    userfun21=par_E_e-20.0;
function userfun22=Boundary_low_E_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun22=par_E_e+20.0;
%%
%%%%%%E_i
function userfun23=Boundary_up_E_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun23=par_E_i+60.0;
function userfun24=Boundary_low_E_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun24=par_E_i+100.0;

    
%% 
%%%%%%Q_e
function userfun25=Boundary_up_Q_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun25=par_Q_e-5.0;
function userfun26=Boundary_low_Q_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun26=par_Q_e-0.0;
  
%% 
%%%%%%Q_i
function userfun27=Boundary_up_Q_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun27=par_Q_i-10.0;
function userfun28=Boundary_low_Q_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun28=par_Q_i-0.0;
    
%% 
%%%%%%tau_e
function userfun29=Boundary_up_tau_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun29=par_tau_e-10.0;
function userfun30=Boundary_low_tau_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun30=par_tau_e-1.0;

%% 
%%%%%%tau_i
function userfun31=Boundary_up_tau_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun31=par_tau_i-10.0;
function userfun32=Boundary_low_tau_i(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun32=par_tau_i-0.5;

%% 
%%%%%%tau_w_e
function userfun33=Boundary_up_tau_w_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun33=par_tau_w_e-1.0;
function userfun34=Boundary_low_tau_w_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun34=par_tau_w_e-1000.0;
    
%% 
%%%%%%b_e
function userfun35=Boundary_up_b_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun35=par_b_e-0.0;
function userfun36=Boundary_low_b_e(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun36=par_b_e-150.0;

    
%% 
%%%%%%N_tot
function userfun37=Boundary_up_N_tot(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun37=par_N_tot-50000;
function userfun38=Boundary_low_N_tot(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun38=par_N_tot-1000;

%% 
%%%%%%p_connect
function userfun39=Boundary_up_p_connect(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun39=par_p_connect-1.0;
function userfun40=Boundary_low_p_connect(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun40=par_p_connect-0.001;

%% 
%%%%%%p_exc_AB
function userfun41=Boundary_up_p_exc_AB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun41=par_p_exc_AB-1.0;
function userfun42=Boundary_low_p_exc_AB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun42=par_p_exc_AB-0.001;

%% 
%%%%%%p_exc_BA
function userfun43=Boundary_up_p_exc_BA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun43=par_p_exc_BA-1.0;
function userfun44=Boundary_low_p_exc_BA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun44=par_p_exc_BA-0.001;

%% 
%%%%%%p_inh_AB
function userfun45=Boundary_up_p_inh_AB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun45=par_p_inh_AB-1.0;
function userfun46=Boundary_low_p_inh_AB(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun46=par_p_inh_AB-0.001;

%% 
%%%%%%p_inh_BA
function userfun47=Boundary_up_p_inh_BA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun47=par_p_inh_BA-1.0;
function userfun48=Boundary_low_p_inh_BA(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun48=par_p_inh_BA-0.001;

%% 
%%%%%%g
function userfun49=Boundary_up_g(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun49=par_g-0.6;
function userfun50=Boundary_low_g(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun50=par_g-0.001;

%% 
%%%%%%T
function userfun51=Boundary_up_T(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun51=par_T-200.0;
function userfun52=Boundary_low_T(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun52=par_T-1.0;
    
%% 
%%%%%% external input_E_E
function userfun53=Boundary_up_external_input_E_E(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun53=par_external_input_E_E-0.2;
function userfun54=Boundary_low_external_input_E_E(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun54=par_external_input_E_E+0.2;
    
%% 
%%%%%% external input_E_I
function userfun55=Boundary_up_external_input_E_I(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun55=par_external_input_E_I-0.1;
function userfun56=Boundary_low_external_input_E_I(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun56=par_external_input_E_I+0.1;

%% 
%%%%%% P_e_0
function userfun57=Boundary_up_P_e_0(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun57=par_P_e_0-5.0;
function userfun58=Boundary_low_P_e_0(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun58=par_P_e_0+5.0;
    
    
%% 
%%%%%% P_e_1
function userfun59=Boundary_up_P_e_1(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun59=par_P_e_1-5.0;
function userfun60=Boundary_low_P_e_1(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun60=par_P_e_1+5.0;
  
%% 
%%%%%% P_e_2
function userfun61=Boundary_up_P_e_2(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun61=par_P_e_2-5.0;
function userfun62=Boundary_low_P_e_2(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun62=par_P_e_2+5.0;

%% 
%%%%%% P_e_3
function userfun63=Boundary_up_P_e_3(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun63=par_P_e_3-5.0;
function userfun64=Boundary_low_P_e_3(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun64=par_P_e_3+5.0;

%% 
%%%%%% P_e_4
function userfun65=Boundary_up_P_e_4(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun65=par_P_e_4-5.0;
function userfun66=Boundary_low_P_e_4(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun66=par_P_e_4+5.0;

%% 
%%%%%% P_e_5
function userfun67=Boundary_up_P_e_5(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun67=par_P_e_5-5.0;
function userfun68=Boundary_low_P_e_5(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun68=par_P_e_5+5.0;

%% 
%%%%%% P_e_6
function userfun69=Boundary_up_P_e_6(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun69=par_P_e_6-5.0;
function userfun70=Boundary_low_P_e_6(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun70=par_P_e_6+5.0;

%% 
%%%%%% P_e_7
function userfun71=Boundary_up_P_e_7(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun71=par_P_e_7-5.0;
function userfun72=Boundary_low_P_e_7(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun72=par_P_e_7+5.0;

%% 
%%%%%% P_e_8
function userfun73=Boundary_up_P_e_8(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun73=par_P_e_8-5.0;
function userfun74=Boundary_low_P_e_8(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun74=par_P_e_8+5.0;

%% 
%%%%%% P_e_9
function userfun75=Boundary_up_P_e_9(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun75=par_P_e_9-5.0;
function userfun76=Boundary_low_P_e_9(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun76=par_P_e_9+5.0;

%% 
%%%%%% P_i_0
function userfun77=Boundary_up_P_i_0(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun77=par_P_i_0-5.0;
function userfun78=Boundary_low_P_i_0(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun78=par_P_i_0+5.0;
    
    
%% 
%%%%%% P_i_1
function userfun79=Boundary_up_P_i_1(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun79=par_P_i_1-5.0;
function userfun80=Boundary_low_P_i_1(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun80=par_P_i_1+5.0;
  
%% 
%%%%%% P_i_2
function userfun81=Boundary_up_P_i_2(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun81=par_P_i_2-5.0;
function userfun82=Boundary_low_P_i_2(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun82=par_P_i_2+5.0;

%% 
%%%%%% P_i_3
function userfun83=Boundary_up_P_i_3(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun83=par_P_i_3-5.0;
function userfun84=Boundary_low_P_i_3(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun84=par_P_i_3+5.0;

%% 
%%%%%% P_i_4
function userfun85=Boundary_up_P_i_4(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun85=par_P_i_4-5.0;
function userfun86=Boundary_low_P_i_4(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun86=par_P_i_4+5.0;

%% 
%%%%%% P_i_5
function userfun87=Boundary_up_P_i_5(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun87=par_P_i_5-5.0;
function userfun88=Boundary_low_P_i_5(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun88=par_P_i_5+5.0;

%% 
%%%%%% P_i_6
function userfun89=Boundary_up_P_i_6(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun89=par_P_i_6-5.0;
function userfun90=Boundary_low_P_i_6(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun90=par_P_i_6+5.0;

%% 
%%%%%% P_i_7
function userfun91=Boundary_up_P_i_7(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun91=par_P_i_7-5.0;
function userfun92=Boundary_low_P_i_7(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun92=par_P_i_7+5.0;

%% 
%%%%%% P_i_8
function userfun93=Boundary_up_P_i_8(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun93=par_P_i_8-5.0;
function userfun94=Boundary_low_P_i_8(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun94=par_P_i_8+5.0;

%% 
%%%%%% P_i_9
function userfun95=Boundary_up_P_i_9(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun95=par_P_i_9-5.0;
function userfun96=Boundary_low_P_i_9(t,kmrgd,par_g_L,par_E_L_e,par_E_L_i,par_C_m,par_E_e,par_E_i,par_Q_e,par_Q_i,par_tau_e,par_tau_i,par_tau_w_e,par_b_e,par_N_tot,par_p_connect,par_p_exc_AB,par_p_exc_BA,par_p_inh_AB,par_p_inh_BA,par_g,par_T,par_external_input_E_E,par_external_input_E_I,par_P_e_0,par_P_e_1,par_P_e_2,par_P_e_3,par_P_e_4,par_P_e_5,par_P_e_6,par_P_e_7,par_P_e_8,par_P_e_9,par_P_i_0,par_P_i_1,par_P_i_2,par_P_i_3,par_P_i_4,par_P_i_5,par_P_i_6,par_P_i_7,par_P_i_8,par_P_i_9)
	userfun96=par_P_i_9+5.0;


