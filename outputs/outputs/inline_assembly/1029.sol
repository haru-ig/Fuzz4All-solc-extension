pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    return SOME_CONST;
  }
  function getSomeConst2() public returns (uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a);
  function myGetSome() public {
    MyLibrary myLibrary = MyLibrary(msg.sender);
    myLibrary. SOME_CONST3 = SOME_CONST3 - SOME_CONST3;
    myLibrary = MyLibrary(msg.sender);
    assert(myLibrary.SOME_CONST3 == 0);
    assert(myLibrary.SOME_CONST2 == 255);
    emit MyEvent(uint(myLibrary.getSomeConst()));
  }
}
