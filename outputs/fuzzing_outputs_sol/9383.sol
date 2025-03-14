pragma solidity ^0.8.0;
contract MutatingFallback5 {
  uint16 internal num1;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate() public onlyFallback {
    num1 = 352 * 3;
    assert(num1 >= 352 * 3);
  }
}
