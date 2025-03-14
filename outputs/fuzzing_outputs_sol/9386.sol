pragma solidity ^0.8.0;
contract MutatingFallback {
  uint16 internal num1;
  modifier onlyFallback {
    require(msg.data.length == 0);
    _;
  }
  function mutate() public onlyFallback {
    num1 = 352 * 3;
  }
  receive() public payable {
    assert(num1 >= 352 * 3);
  }
}
