pragma solidity ^0.8.0;
library TestLib {

    uint constant SIZE = 3;
    uint[] internal storage internal_var;
    function init() internal pure {
      internal_var = new uint[](SIZE);
      internal_var[0] = 0xaa;
    }
    function test1() internal pure{
      assembly {

        internal_var.0 := 0x1234567890abcdef
      }
      internal_var[1] = 0xab;
      assembly {

        internal_var.0 := 0x1234567890abcdef
      }
      internal_var[SIZE] = 0xac;
      internal_var[SIZE/2 - 1] = 0xad;
    }
}
