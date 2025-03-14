pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y {
  uint8 constant x = 1;
  uint8 constant y = 0;
  bool xEqualY;

  function foo() public pure {
    assembly { xEqualY := eq(mload(x), mload(y)) }
  }
  bool test(){
    return xEqualY;
  }
}
