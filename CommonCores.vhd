-------------------------------------------------------------------------------
-- Title      : CommonCores
-- Project    : 
-------------------------------------------------------------------------------
-- File       : CommonCores.vhd
-- Author     : george.j.bishop@protonmail.com
-- Company    : 
-- Created    : 2021-02-10
-- Last update: 2021-02-10
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2021 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2021-02-10  1.0      bisho	Created
-------------------------------------------------------------------------------

library ieee;
using ieee.std_logic_1164.all;

package CommonCores is

  ------------------------------------------------------------------------------
  -- Types
  ------------------------------------------------------------------------------
  type BooleanVector is array (natural range <>) of boolean;
  type NaturalVector is array (natural range <>) of natural;
  type IntegerVector is array (natural range <>) of integer;
  
  ------------------------------------------------------------------------------
  -- Conversion Functions
  ------------------------------------------------------------------------------
  -- to_std_logic
  function to_std_logic(i : boolean)
    return std_logic;

  function to_std_logic(i : bit)
    return std_logic;

  -- to_boolean
  function to_boolean(i : std_logic)
    return boolean;

  function to_boolean(i : std_ulogic)
    return boolean;

  ------------------------------------------------------------------------------
  -- Utility Functions
  ------------------------------------------------------------------------------
  function Ones(size : integer)
    return std_logic_vector;

  function Zeros(size : integer)
    return std_logic_vector;
  
end package CommonCores;

package body CommonCores is

  ------------------------------------------------------------------------------
  -- Conversion Functions
  ------------------------------------------------------------------------------  
  -- to std_logic
  function to_std_logic(i : boolean)
    return std_logic is
  begin
    if i then
      return '1';
    else
      return '0';
    end if;
  end;
  
  function to_std_logic(i : bit)
    return std_logic is
  begin
    if i = '1' then
      return '1';
    else
      return '0';
    end if;
  end;
  
  -- to_boolean
  function to_boolean(i : std_logic)
    return boolean is
  begin
    if i = 'H' or i = '1' then
      return true;
    else
      return false;
    end if;
  end;

  function to_boolean(i : std_ulogic)
    return boolean is
  begin
    if i = 'H' or i = '1' then
      return true;
    else
      return false;
    end if;
  end;

  ------------------------------------------------------------------------------
  -- Utility Functions
  ------------------------------------------------------------------------------
  function Ones(size : integer)
    return std_logic_vector is
    variable retval : std_logic_vector(size-1 downto 0) := (others => '1');
  begin
    return retval;
  end;

  function Zeros(size : integer)
    return std_logic_vector is
    variable retval : std_logic_vector(size-1 downto 0) := (others => '0');
  begin
    return retval;
  end;
  
end package body CommonCores;

