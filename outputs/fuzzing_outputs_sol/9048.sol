pragma solidity ^0.8.0;
contract MutatedContract {
  function mutatedCall() public returns (int) {
    return 22 + 1;
  }
}
