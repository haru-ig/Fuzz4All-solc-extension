pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2929292929;
  uint constant private SOME_CONST3 = 235353535;
}
contract C {
  MyLibrary.SOME_CONST2 = 1;

  assembly {
    let tmp := 5
    0x00
    0x61
    0x38
    0x15
    0x1b
    0x3e
    0x3d
    0xf6
    0xf5
    0x01
    0x61
    0x37
  }

  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2929292929;
  uint constant private SOME_CONST3 = 235353535;
}

contract D is C {

  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2929292929;
  uint constant private SOME_CONST3 = 235353535;

  function x(uint a, uint b) public {

    a = add(c, b);
    assembly {

      let tmp := add(a, b)
    }
  }
}
