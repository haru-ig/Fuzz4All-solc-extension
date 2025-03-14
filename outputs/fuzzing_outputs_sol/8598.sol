pragma solidity ^0.8.0;


contract FallbackExample {
  function executeCallerFallbackFunction() public pure {
    address(this).call{value: 1 ether}("");
  }
}
