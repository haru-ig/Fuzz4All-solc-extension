pragma solidity ^0.8.0;
contract CallerExample6 {
  function callerCallValueWithStorage() public payable {
    uint(0).toString();
  }
  function callerCallNonpayable() public payable {
  }
  function callerCallNonpayableToFallback() public {
    fallback();
  }
}
contract CallerExample7 {
  function callerNonpayable() public nonpayable {
  }
  function callerNonpayableToFallback() public pure {
    fallback();
  }
}
contract CallerExample8 {
  function callerNonpayableFallback() public pure payable {
    fallback();
  }
  function callerNonpayableReturnBool() public pure returns(bool) {
    return false;
  }
  function callerNonpayableCallValue() public pure returns(uint) {
  }
  function callerNonpayableCallValueWithStorage() public pure returns(uint) {
  }
  function callerNonpayableCallNonpayable() public pure returns(uint) {
  }
  function callerNonpayableCallNonpayableToFallback() public pure {
    fallback();
  }
}
