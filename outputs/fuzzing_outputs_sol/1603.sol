pragma solidity ^0.8.0;
contract Mutators {
  constructor() {
  }
  fallback() payable external {}
  function receive() external payable {}
}
