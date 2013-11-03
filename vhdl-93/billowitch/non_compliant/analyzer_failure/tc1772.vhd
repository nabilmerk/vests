
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
-- $Id: tc1772.vhd,v 1.2 2001-10-26 16:30:12 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c09s05b02x00p11n01i01772ent IS
END c09s05b02x00p11n01i01772ent;

ARCHITECTURE c09s05b02x00p11n01i01772arch OF c09s05b02x00p11n01i01772ent IS
  signal   i, j : integer := 1;
BEGIN

  j <= transport 1 when 1,
       2 when 2;
  -- Failure_here
  -- Not every value of select expressions is represented.
  -- 'others' choice is needed.


  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST: c09s05b02x00p11n01i01772 - Each value of the type of the select expression is represented once and only once in teh set of choices."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c09s05b02x00p11n01i01772arch;
