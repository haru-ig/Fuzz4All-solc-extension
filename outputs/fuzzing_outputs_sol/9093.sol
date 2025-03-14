pragma solidity ^0.8.0;
error FirstError() {}
contract SecondFallback {
  function badCall() public returns (address) {
    selfdestruct(0);
    return address(0);
  }
}
