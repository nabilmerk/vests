
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
-- $Id: tc509.vhd,v 1.2 2001-10-26 16:30:26 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c03s02b02x00p06n03i00509ent IS
END c03s02b02x00p06n03i00509ent;

ARCHITECTURE c03s02b02x00p06n03i00509arch OF c03s02b02x00p06n03i00509ent IS
  type date is
    record
      day    :integer range 1 to 31;

--  Failure_here: cannot use element name of record as part of definition of
--  another field of same record.
      
      month   : day range 1 to 12;
      year   : integer range -6000 to 6000;
    end record;
BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE 
      report "***FAILED TEST: c03s02b02x00p06n03i00509 - The use of a name that denotes a record element is not allowed within the record type definition that declares the element." 
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c03s02b02x00p06n03i00509arch;
