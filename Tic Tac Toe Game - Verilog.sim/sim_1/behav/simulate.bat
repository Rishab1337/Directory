@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xsim tb_tic_tac_toe_behav -key {Behavioral:sim_1:Functional:tb_tic_tac_toe} -tclbatch tb_tic_tac_toe.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
