pragma solidity ^0.8.0;
contract MutatingFallback6 {
  uint16 public num1;
  uint8 public num2;
  address public token;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate() public onlyFallback {
    num1 = 352;
    num2 = 2;
    token = address(this);
    assert(num1 == 352);
  }
}
