pragma solidity ^0.8.0;
contract SolidityStorageFallback {
  uint value;
  function store(uint n) public { value = n; }
  function get() public pure returns (uint) { return value; }
}
