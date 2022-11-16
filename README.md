# Bifuraction analysis of the dynamics of a system composed of two interconnected networks of AdEx adaptative excitatory and inhibitory neurons.

# Code for the bifurcation analysis using MatCont.

* Model :

  * Zerlaut_model_adap.m : implements the partial differential equations governing the dynamics of the system
  * Zerlaut_adap.m : integrates the model on matcont
  * start_analyse.m : initializes the system for the bifurcation analysis
  * load_parameters.m : loads the parameters from the corresponding file
  * parameter.mat : default parameters

* Bifurcation analysis:

  * Equilibrium_Point.m : implements an equilibrium continuation starting from an initial equilibrium point 
  * Equilibrium_Point_cont.m : continues an equilibrium continuation previously started
  * Branch_Point.m : implements an equilibrium continuation starting from a branch point previously detected by the bifurcation analysis
  * *_cont.m => continues one bifurcation analysis
  
  * print_figure: function to print or check the result of the bifurcation.

* Steps to follow for the analysis:

  * step_0_integration.m : testing the model and finding a limit circle or a fixed point
  * step_1_run_analyse_LC.m : bifurcation analysis of limit circle
  * step_2_0_run_analyse_EQ_high_fixed_point.m : bifurcation of one equilibrium
  * step_2_1_run_analyse_EQ_low_fixed_point.m : bifurcation of another equilibrium


