pragma solidity ^0.8.0;
contract SemanticSimilar370_Modified {
  uint256 a;
  bool isFallbackCalled;
  constructor() public {
    a = 0;
  }
  function doSomething() public pure returns (bool) {
    return true;
  }
  fallback () external {
    isFallbackCalled = true;
  }
  receive() external payable {
    address payable caller = msg.sender;
    if (isFallbackCalled) {
      if (msg.value!= 0) {
        caller.transfer(msg.value);
      } else {
        caller.transfer(tx.origin.balance);
      }
    }
  }
}
