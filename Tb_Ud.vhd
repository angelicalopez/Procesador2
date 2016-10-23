--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:03:02 10/17/2016
-- Design Name:   
-- Module Name:   D:/Users/angelicabibiana/Desktop/procesadorangelica2/procesador2/Tb_Ud.vhd
-- Project Name:  procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_Ud IS
END Tb_Ud;
 
ARCHITECTURE behavior OF Tb_Ud IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seu
    PORT(
         inmediato13bits : IN  std_logic_vector(12 downto 0);
         salidaInmediato : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inmediato13bits : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal salidaInmediato : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seu PORT MAP (
          inmediato13bits => inmediato13bits,
          salidaInmediato => salidaInmediato
        );

 

   -- Stimulus process
stim_proc: process
   begin		
      
		 inmediato13bits<="1111111111001"; --le doy un inmediato de 13 bits 

      wait;
   end process;

END;
