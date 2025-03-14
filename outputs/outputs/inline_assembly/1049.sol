pragma solidity ^0.8.0;
library MyLibrary {
  function getSomeConst() public returns (uint) {
    return SOME_CONST;
  }
}
contract MyContract {
  uint SOME_CONST = 1433;
  event MyEvent(uint indexed a);
  function myGetSome() public {
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
}
