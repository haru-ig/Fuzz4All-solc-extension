pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function modifyConstant(uint value) public {
    SOME_CONST = SOME_CONST + value;
    SOME_CONST2 = SOME_CONST2 + value;
    SOME_CONST3 = SOME_CONST3 + value;
  }
  function modifyConst2(uint value) public {
    SOME_CONST = SOME_CONST + value + value;
    SOME_CONST2 = SOME_CONST2 + value;
    SOME_CONST3 = SOME_CONST3 + value;
  }
}
contract MyContract {
  using MyLibrary for uint;
  function myGetSome() public {
    modifyConst2(1);
  }
}
contract MyContract {
  using MyLibrary for uint;
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  function myGetSome() public {
    modifyConstant(4);
    SOME_CONST2 = SOME_CONST2 + 8;
  }
}
