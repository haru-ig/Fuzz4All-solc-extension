pragma solidity ^0.8.0;
library MyLibrary {
  uint constant SOME_CONST = 8;
  uint constant SOME_CONST2 = 8;
  uint constant SOME_CONST3 = 8;
  function getSomeConst() public pure returns(uint) {
    return SOME_CONST;
  }
  function getSomeConst2() public pure returns(uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() public pure returns(uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  uint private x;
  function myFunction() public {
    uint value;
    assembly {
      value := x
    }
    address foo = MyLibrary.getSomeConst();
    emit fooEvent(value);
  }
  event fooEvent(uint x);
}
