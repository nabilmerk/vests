
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
-- $Id: tc1675.vhd,v 1.2 2001-10-26 16:30:03 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c09s01b00x00p06n01i01675ent IS
END c09s01b00x00p06n01i01675ent;

ARCHITECTURE c09s01b00x00p06n01i01675arch OF c09s01b00x00p06n01i01675ent IS
  signal garde : boolean := true;
BEGIN
  lab: block ( garde )
  begin
    garde <= not GUARD after 20 ns;
    assert ( GUARD = garde )
      report "***FAILED TEST: c09s01b00x00p06n01i01675 - Implicit signal GUARD changed state and does not match explicit signal garde (FAIL)"
      severity ERROR;
  end block lab;

  TESTING: PROCESS
  BEGIN
    assert FALSE
      report "***PASSED TEST: c09s01b00x00p06n01i01675 - This test needed manual check, no failure test assertion report"
      severity NOTE;
    wait;
  END PROCESS TESTING;

END c09s01b00x00p06n01i01675arch;
