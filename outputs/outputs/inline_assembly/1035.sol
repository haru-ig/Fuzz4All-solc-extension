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
  uint constant public SOME_CONST3 = 2222222222;
  event MyEvent(uint indexed a);
  uint indexed private constant SOME_CONST5 = 23222;
  function myGetSome() public {
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
  function myGetSome2() public {
    if (SOME_CONST5!= uint(SOME_CONST3)) {

      emit MyEvent(uint(MyLibrary.getSomeConst()));
    }
  }
}
