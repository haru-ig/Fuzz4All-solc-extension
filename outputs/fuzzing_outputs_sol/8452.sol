pragma solidity ^0.8.0;
contract CallerExample {
  function callerReturnString(string memory dataIn) public pure returns(string memory) {
    return dataIn;
  }
}
