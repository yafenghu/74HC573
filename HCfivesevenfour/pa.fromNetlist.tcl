
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name HCfivesevenfour -dir "G:/Xilinx/HCfivesevenfour/planAhead_run_3" -part xc6slx4cpg196-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "G:/Xilinx/HCfivesevenfour/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {G:/Xilinx/HCfivesevenfour} }
set_property target_constrs_file "hc.ucf" [current_fileset -constrset]
add_files [list {hc.ucf}] -fileset [get_property constrset [current_run]]
link_design
