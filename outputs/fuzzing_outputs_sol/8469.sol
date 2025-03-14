pragma solidity ^0.8.0;
contract CallerExample4 {
  function callerCallValue() public payable {
  }
  function callerReturnBoolValue() public pure returns(bool) {
    return false;
  }
}
contract CallerExample5 {
  function callerCallValueWithStorage() public payable returns(uint) {
  }
}
