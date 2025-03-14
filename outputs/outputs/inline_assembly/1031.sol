pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2323232323;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    return SOME_CONST;
  }
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a);
  function myGetSome() public {
    SOME_CONST3 = SOME_CONST;
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
}
