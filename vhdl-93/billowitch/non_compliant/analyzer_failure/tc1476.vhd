
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

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
-- $Id: tc1476.vhd,v 1.2 2001-10-26 16:30:10 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c08s08b00x00p04n01i01476ent IS
END c08s08b00x00p04n01i01476ent;

ARCHITECTURE c08s08b00x00p04n01i01476arch OF c08s08b00x00p04n01i01476ent IS

  type   t_int1 is range 0 to 100;
BEGIN
  TESTING: PROCESS
    variable k : integer := 0;
    variable i : integer := 50;
  BEGIN
    case i is
      when t_int1'low to 60    => k := 5;
      when 61 to 88       => NULL;
      when others       => NULL;
    end case;
    assert FALSE
      report "***FAILED TEST: c08s08b00x00p04n01i01476 - all of the choices must have the same type as the expression"
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c08s08b00x00p04n01i01476arch;
