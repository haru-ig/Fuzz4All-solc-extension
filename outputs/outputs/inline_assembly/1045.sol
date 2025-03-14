pragma solidity ^0.8.0;
contract MyContract {
  using MyLibrary for uint;
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  event MyEvent(uint indexed a);
  function myGetSome() public {
    SOME_CONST = SOME_CONST2;
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
  function myGetSome2() public {
    SOME_CONST2 = SOME_CONST3;
  }

}
