%  Copyright 2021 Aix-Marseille Université
% "Licensed to the Apache Software Foundation (ASF) under one or more contributor license agreements; and to You under the Apache License, Version 2.0. "

%% get the path 
currentFile = mfilename( 'fullpath' );
[path,~,~] = fileparts( currentFile );
path = strcat(path,"/EQ_Low_2nodes_6368_test_11nov_sym_2/");
if ~exist(path, 'dir')
   mkdir(path)
end

%% initialise parameters
nb_variable = 15;


%% initial conditions EQ_Low_2nodes_6368_test for both networks
xinit=[0.008879174261203, 0., 0.019163785974604, 0., 1.068724078078379e-07, 0., -8.672250240746687e-10, 0., 0., 0., 0., 8.617060187829917e-07, 0., 0., 4.912610906683856e-27, 0.]
%xinit=[0.008879174261203, 0, 0.019163785974604, 0, 1.068724078078379e-07, 0, -8.672250240746687e-10, 0, 0, 0, 0, 8.617060187829917e-07, 0, 0, 0, 0] 
external_input_EE =0;
%xinit=[0.008879180161425, 0., 0.019163825646130, 0., 2.299402178611073e-08, 0.,-1.171661775274857e-10, 0., 0., 0., 0, 1.469387303629773e-07, 0., 0., 0., 0.]

%xinit=[8.87917426237024e-003, 0.00000000000000e+000, 19.1637859766114e-003, 0., 106.872418634038e-009, 0., -867.224737268984e-012, 0., 0., 0., 0., 861.706015539962e-009, 0., 0., 4.44511416861913e-027, 0.]

%% middle fixed point EQ_Low_2nodes_6365_test

%xinit=[0.006736053894387, 0., 0.015150822465864, 0., 1.835155463305062e-08, 0., -9.895634928054641e-11, 0., 0., 0., 0., 1.313067180001039e-07, 0., 0., 9.648973008615702e-27, 0.]
%external_input_EE = 1.216509393226919e-07;

%% middle fixed point for 2 nodes EQ_Low_2nodes_6368_test

% external_input_EE = 0.; %1.389995245736951e-08;
%% xinit=[0.008879180161425, 0.008879180161425, 0.019163825646130, 0.019163825646130, 2.299402178611073e-08, 0., -1.171661775274857e-10, 0., 2.299402178611073e-08, 0., -1.171661775274857e-10, 1.469387303629773e-07, 0., 1.469387303629773e-07, 4.912610906683856e-27, 4.912610906683856e-27]
%xinit=[8.87907983747378e-003, 8.87907983747378e-003, 19.1635902452071e-003, 19.1635902452071e-003, 106.871018806924e-009, 6.36151493701332e-015, -867.198311687175e-012, 12.2675901367517e-015, 106.871018806924e-009, 12.2675901367517e-015, -867.198311687175e-012, 861.694561336529e-009, 28.9627487420918e-015, 861.694561336529e-009, 4.44511416861913e-027, 4.44511416861913e-027]
%% start end of branch
%xinit=[3.191119500563943e-05, 0.008879670724716, 3.995106096653439e-07, 0.019166979843912, 3.992254874696489e-10, 1.892538591061875e-12, 3.480995460683181e-15, 8.516873261223280e-14, 1.068780521619932e-07, 3.371461482312821e-14, -8.673540409024579e-10, 1.997546962974070e-11, -5.388927304338472e-17, 8.618343055465874e-07, 0, 0]

%% start HOPF 
%external_input_EE = 2.269354939363481e-04;
%xinit=[0.008979449853112, 0., 0.019818794486735, 0., 2.319414030630450e-08, 0., -1.169010326918319e-10, 0., 0., 0., 0., 1.487295647215445e-07, 0., 0., 8.738597067826070e-28, 0.]

%xinit = [0.006736054107679, 0.0, 0.015150822339961, 8.198467606967413e-08, 0.0, 0.0,0.0,0.0]; 
%xinit = [0.006736054107679, 0.015150822339961, 8.198467606967413e-08, -1.532611890622314e-09, 6.964807133401267e-07, 1.287659890135313e-26]
%xinit =[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
%xinit = [0.006736000522408, 0.006736000522408, 0.015150578926278, 0.015150578926278, 8.197803672841847e-08, 2.281397701635157e-19, -6.257745155506490e-10, 2.234205569798222e-19, 8.197803672837644e-08, 2.234193096528899e-19, -6.257745154900210e-10, 6.964736602327475e-07, 2.188359270794252e-19, 6.964736602327174e-07, 1.079543606100960e-26, 0.0]

%% start BRANCH POINT
xinit=[0.006345716273813, 0.006345716406824, 0.007204446707876, 0.007204447172617, 7.770472050159328e-08, -4.306035072978117e-10, -2.912360247931675e-10, -2.412078308087898e-10, 7.770472210556138e-08, -2.412078373630049e-10, -2.912359895495158e-10, 3.457075332090808e-07, -1.315749024737602e-12, 3.457075547211126e-07, -5.012832820307983e-14, 5.013183141489263e-14]
value=-0.023804853777094;

%% forward
folder = "start_Lazar";
MaxStepsize=1e-5;
MaxNumPoints_forward =10000; %300000 %30000 %600000;%200000
MaxNumPoints_backward=10000 %30000  %100000;%20000  
%value=0.;%-0.023804853777094;

Equilibrium_Point(path,folder,nb_variable,xinit',MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward,value);

%% branch point continuation
%folder= "continuation_BP"
%MaxStepsize=1e-6;
%MaxNumPoints_forward =200000;
%MaxNumPoints_backward=20000;  
%value=-0.023804853777094;

%Branch_Point(path,folder,nb_variable,xinit',MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward,value);

%% forward continuation around 0
folder="cont_Lazar";
file="start_Lazar/p_exc_AB_Lazar_f.mat";
number= 10;
MaxStepsize=1e-8;
MaxNumPoints_forward=20000; 
Equilibrium_Point_cont(path,folder,nb_variable,file,number,MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);

%% forward continuation suite
folder="cont_Lazar_2";
file="cont_Lazar/p_exc_AB_Lazar_f.mat";
number= 1;
MaxStepsize=1e-6;
MaxNumPoints_forward=200000; 
Equilibrium_Point_cont(path,folder,nb_variable,file,number,MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);

%% backword continuation from first point back to first BP
folder='cont_backword_BP'
file="start_Lazar/p_exc_AB_Lazar_b.mat";
MaxStepsize=1e-5;
MaxNumPoints_forward=20000; 
Equilibrium_Point_cont(path,folder,nb_variable,file,number,MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);


%% forward precision for first LP
folder = "zoom_beginning_Lazar";
MaxStepsize=1e-8;
MaxNumPoints_forward =40000;
MaxNumPoints_backward=-1;  

Equilibrium_Point(path,folder,nb_variable,xinit',MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward)

%% forward precision for first LP
folder="zoom_LP_test_Lazar";
file="zoom_beginning_Lazar/external_input_E_E_Lazar_f.mat";
number= 10000;
MaxStepsize=1e-8;
MaxNumPoints_forward=2000;
MaxNumPoints_backward=-1;  
TestTolerance = 1e-10;
Equilibrium_Point_cont(path,folder,nb_variable,file,number,MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward,TestTolerance)

%% concatenation
global name_variable
name_variable=[
    "g_L",'E_L_e','E_L_i','C_m','E_e',...
    'E_i','Q_e','Q_i','tau_e','tau_i',...
    'tau_w_e','b_e','N_tot', 'p_connect',...
    'p_exc_AB','p_exc_BA','p_inh_AB','p_inh_BA','g',...
    'T','external_input_E_E','external_input_E_I','P_e_0','P_e_1',...
    'P_e_2','P_e_3','P_e_4','P_e_5','P_e_6',...
    'P_e_7','P_e_8','P_e_9','P_i_0','P_i_1',...
    'P_i_2','P_i_3','P_i_4','P_i_5','P_i_6',...
    'P_i_7','P_i_8','P_i_9',...
    ]; % Initialize parameter vector

path_shift =[
            struct('path',strcat(path,'/start/p_exc_AB_Lazar_b.mat'),'flip',true,'shift',0);
            struct('path',strcat(path,'/start/p_exc_AB_Lazar_f.mat'),'flip',false,'shift',0);
             ];
[x,v,f,h,s] = concatenate_result_1_dim(path_shift);
if ~exist(path+"/figure/", 'dir')
   mkdir(path+"/figure/")
end
figs=printing(x,f,v,s,nb_variable);
savefig(figs,path+"/figure/"+name_variable(nb_variable)+'.fig')
close(figs)