pragma solidity ^0.8.0;
contract MyContract {
  event MyEvent(uint indexed a);
  function myGetSome() public {
    MyLibrary.getSomeConst2() = SOME_CONST + SOME_CONST;
    emit MyEvent(uint(MyLibrary.getSomeConst2()));
  }
}
