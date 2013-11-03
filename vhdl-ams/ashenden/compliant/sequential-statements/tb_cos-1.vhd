
-- Copyright (C) 2002 Morgan Kaufmann Publishers, Inc

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

entity tb_cos is

end entity tb_cos;


----------------------------------------------------------------


architecture test_fixed_length_series of tb_cos is

  signal theta, result : real := 0.0;

begin

  dut : entity work.cos(fixed_length_series)
    port map ( theta => theta, result => result );

  stimulus : process is

    constant pi : real := 3.1415927;

  begin
    wait for 10 ns;
    theta <= pi / 6.0;		wait for 10 ns;
    theta <= pi / 4.0;		wait for 10 ns;
    theta <= pi / 3.0;		wait for 10 ns;
    theta <= pi / 2.0;		wait for 10 ns;

    wait;
  end process stimulus;

end architecture test_fixed_length_series;
