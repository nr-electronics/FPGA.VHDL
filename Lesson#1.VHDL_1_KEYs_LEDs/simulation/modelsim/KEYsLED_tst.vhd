-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/19/2021 21:36:08"
                                                            
-- Vhdl Test Bench template for design  :  KEYsLEDs
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY KEYsLEDs_vhd_tst IS
END KEYsLEDs_vhd_tst;
ARCHITECTURE KEYsLEDs_arch OF KEYsLEDs_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL key : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL led : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT KEYsLEDs
	PORT (
	key : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	led : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : KEYsLEDs
	PORT MAP (
-- list connections between master ports and signals
	key => key,
	led => led
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         

key(0) <= '0';
key(1) <= '0';
wait for 10 ns;

key(0) <= '1';
key(1) <= '0';
wait for 10 ns;

key(0) <= '0';
key(1) <= '1';
wait for 10 ns;

key(0) <= '1';
key(1) <= '1';
wait for 10 ns;

WAIT;                                                        
END PROCESS always;                                          
END KEYsLEDs_arch;
