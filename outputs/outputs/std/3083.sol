pragma solidity ^0.8.0;
contract MutatedFunctionality is MyAddressableContract {
  constructor() {

  }
  uint public result;
  function getResult() public {
    result = 0;
    result = 2 * result;
    uint a = 2 + 2;
    result += a;
    for(uint x = 1; x <= 200; x++) {
      result += 500 * x;
    }
    for(uint i = 0; i < 1000; i++) {
      result *= i;
    }
  }
}
