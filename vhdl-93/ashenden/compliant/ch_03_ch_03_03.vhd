
-- Copyright (C) 1996 Morgan Kaufmann Publishers, Inc

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: ch_03_ch_03_03.vhd,v 1.3 2001-10-26 16:29:33 paw Exp $
-- $Revision: 1.3 $
--
-- ---------------------------------------------------------------------

entity ch_03_03 is
end entity ch_03_03;

architecture test of ch_03_03 is
begin

  process_3_1_c : process is

                            type mode_type is (immediate, other_mode);
                          type opcode_type is (load, add, subtract, other_opcode);

                          variable mode : mode_type;
                          variable opcode : opcode_type;
                          constant immed_operand : integer := 1;
                          constant memory_operand : integer := 2;
                          constant address_operand : integer := 3;
                          variable operand : integer;

                          procedure procedure_3_1_c is
                          begin

                            -- code from book:

                            if mode = immediate then
                              operand := immed_operand;
                            elsif opcode = load or opcode = add or opcode = subtract then
                              operand := memory_operand;
                            else
                              operand := address_operand;
                            end if;

                            -- end of code from book

                          end procedure_3_1_c;

  begin
    mode := immediate;
    procedure_3_1_c;

    mode := other_mode;
    opcode := load;
    procedure_3_1_c;

    opcode := add;
    procedure_3_1_c;

    opcode := subtract;
    procedure_3_1_c;

    opcode := other_opcode;
    procedure_3_1_c;

    wait;
  end process process_3_1_c;

end architecture test;
