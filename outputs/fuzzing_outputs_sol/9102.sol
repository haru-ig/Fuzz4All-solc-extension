pragma solidity ^0.8.0;
contract Caller {
  function badCall(address target, uint i) public payable {}
  fallback() external payable {}
}
