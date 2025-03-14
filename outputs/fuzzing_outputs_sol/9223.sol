pragma solidity ^0.8.0;
contract Caller {
  constructor() {}
  function call() external payable { revert(); }
  receive() external {}
}
