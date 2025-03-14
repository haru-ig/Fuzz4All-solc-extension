pragma solidity ^0.8.0;
contract C {
  address myAddress;
  function g() public view returns (address) {
    return myAddress;
  }
}
