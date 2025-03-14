pragma solidity ^0.8.0;
contract MutatingFallback5 {
  uint16 internal num1;
  uint8 internal num2;
  address internal token;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate() public onlyFallback {
    num1 = 352 * 3;
    num2 = 2;
    token = address(this);
    assert(num1 >= 352 * 3);
  }
}
