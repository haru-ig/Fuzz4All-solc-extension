pragma solidity ^0.8.0;
contract BadFallback {
  uint256 a = 10;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { a = 60; return a; }
  function pay() public payable { a += 1; if (a == 60) return (address(0)); }
  function _fallback() public payable {}
}
