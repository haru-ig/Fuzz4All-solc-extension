pragma solidity ^0.8.0;
contract MutatedCallerExample {
  function mutatedCallerReturnTrue() public pure returns(bool) {
    return callerReturnTrue();
  }
}
