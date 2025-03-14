pragma solidity ^0.8.0;
contract Caller {
  constructor() {
    fallback();
  }
  function callWithEther() external payable {}

  function fallback() public payable {}
}
