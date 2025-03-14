pragma solidity ^0.8.0;
contract Caller {
  constructor() {
    require(true);
  }
  function callWithEther() external {
    address(this).balance;
  }
  receive () external payable {}
}
