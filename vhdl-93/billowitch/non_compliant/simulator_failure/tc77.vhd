
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
-- $Id: tc77.vhd,v 1.2 2001-10-26 16:30:30 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c04s03b01x02p10n04i00077ent IS
END c04s03b01x02p10n04i00077ent;

ARCHITECTURE c04s03b01x02p10n04i00077arch OF c04s03b01x02p10n04i00077ent IS
  type    int_array is array(1 to 1) of integer;
  signal    s : int_array := (1 => 0);
BEGIN

  s <= (1 => 1);
  s <= (1 => 21); s <= (1 => 22);
  s <= (1 => 31); s <= (1 => 32); s <= (1 => 33);

  TEST: PROCESS
  BEGIN
    assert FALSE
      report "***FAILED TEST:c04s03b01x02p10n04i00077- Signal has multiple sources but is not a resolved signal."
      severity ERROR;
    wait;
  END PROCESS TEST;

END c04s03b01x02p10n04i00077arch;
