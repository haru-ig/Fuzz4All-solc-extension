pragma solidity ^0.8.0;
contract FallbackExample {
  constructor() {
    __Fallback__fallback();
  }
  function __Fallback__fallback() internal {
    (address dummyAddress, uint) = call.value(1 ether)("");
    uint dummyValue = 1;
  }
}
