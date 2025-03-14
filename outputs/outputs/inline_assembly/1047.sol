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
    SOME_CONST3++;
    emit MyEvent(uint(MyLibrary.getSomeConst()));
  }
}

pragma solidity ^0.8.0;
contract MyContract {
  uint32 constant public SOME_CONST = 42;
  event MyEvent(uint32 indexed a);
  function myGetSome() public {
    emit MyEvent(SOME_CONST);
  }
}
