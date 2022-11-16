%  Copyright 2021 Aix-Marseille Université
% "Licensed to the Apache Software Foundation (ASF) under one or more contributor license agreements; and to You under the Apache License, Version 2.0. "
clear all
global cds sys
format longEng
%% get the path 
currentFile = mfilename( 'fullpath' );
[path,~,~] = fileparts( currentFile );
path = strcat(path,"/EQ_High/");
if ~exist(path, 'dir')
   mkdir(path)
end

%% initialise parameters
nb_variable = 15;
%xinit = [192.633343733407e-003, 192.792039966707e-003, 192.792039966707e-003, 192.792039966707e-003, 88.6955903317254e-009, 0.00000000000000e+000, 4.87672060835196e-012, 0.00000000000000e+000, 88.6955903317254e-009, 0.00000000000000e+000, 4.87672060835196e-012, 347.414969848884e-009, 0.00000000000000e+000, 347.414969848884e-009, 0.00000000000000e+000, 0.00000000000000e+000];
%        [v_eA,                 v_eB,                  v_iA,                  v_iB,                  c_eAeA,                c_eAeB,                c_eAiA,                c_eAiB,                c_eBeB,                c_eBiA,                c_eBiB,                c_iAiA,                c_iAiB,                c_iBiB,                w_eA,                  w_eB]
%1st order high fixed point
xinit = [196.374853328251e-003, 196.374853328251e-003, 196.380355662522e-003, 196.380355662522e-003, 44.4934859687813e-009, 851.722018753700e-030, 821.008525123642e-015, 143.771339405182e-030, 44.4934859687813e-009, 143.771339405182e-030, 821.008525123642e-015, 177.708215787838e-009, 24.2687139632535e-030, 177.708215787838e-009, 0.00000000000000e+000, 0.00000000000000e+000];

%% forward
folder = "start";
MaxStepsize=1e-4;
MaxNumPoints_forward =200000;
MaxNumPoints_backward=0;  

[x1,f1,v1,s1,x2,f2,v2,s2]=Equilibrium_Point(path,folder,nb_variable,xinit',MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);
%f=printing_1storder(x1,f1,v1,s1,x2,f2,v2,s2,nb_variable);
%% save figures
%savefig(f,path+"/"+folder+"/"+name_variable(nb_variable)+'_precision.fig')
%close(f)
%% backword begin
folder = "cont_1";
xinit = [196.374853328251e-003, 196.374853328251e-003, 196.380355662522e-003, 196.380355662522e-003, 44.4934859687813e-009, 851.722018753700e-030, 821.008525123642e-015, 143.771339405182e-030, 44.4934859687813e-009, 143.771339405182e-030, 821.008525123642e-015, 177.708215787838e-009, 24.2687139632535e-030, 177.708215787838e-009, 0.00000000000000e+000, 0.00000000000000e+000];
MaxStepsize=1e-5;
MaxNumPoints_forward =-1;
MaxNumPoints_backward=41000;  

[x1_c1,f1_c1,v1_c1,s1_c1,x2_c1,f2_c1,v2_c1,s2_c1]=Equilibrium_Point(path,folder,nb_variable,xinit',MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);
%f=printing_1storder(x1_c1,f1_c1,v1_c1,s1_c1,x2_c1,f2_c1,v2,s2_c1,nb_variable);
%% save figures
%savefig(f,path+"/"+folder+"/"+name_variable(nb_variable)+'_precision.fig')
%close(f)
%% backword follow
folder="cont_2";
file="cont_1/p_exc_AB_b.mat";
number= 10;
MaxStepsize=1e-8;
MaxNumPoints_backward=20000; 
Equilibrium_Point_cont(path,folder,nb_variable,file,number,MaxStepsize,MaxNumPoints_forward,MaxNumPoints_backward);
%f=printing_1storder(x1_c2,f1_c2,v1_c2,s1_c2,x2_c2,f2_c2,v2,s2_c2,nb_variable);
%% save figures
%savefig(f,path+"/"+folder+"/"+name_variable(nb_variable)+'_precision.fig')
%close(f)

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

path_shift =[struct('path',strcat(path,'/start/p_exc_AB_Lazar_f.mat'),'flip',true,'shift',0);
             struct('path',strcat(path,'/cont_1/p_exc_AB_b.mat'),'flip',false,'shift',0);
             struct('path',strcat(path,'/cont_2/p_exc_AB_b.mat'),'flip',false,'shift',10)];
[x,v,f,h,s] = concatenate_result_1_dim(path_shift);
if ~exist(path+"/figure/", 'dir')
   mkdir(path+"/figure/")
end
figs=printing(x,f,v,s,nb_variable);
%savefig(figs,path+"/figure/"+name_variable(nb_variable)+'final.fig')
close(figs)