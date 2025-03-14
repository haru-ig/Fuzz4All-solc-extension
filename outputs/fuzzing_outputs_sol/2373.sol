pragma solidity ^0.8.0;
contract Caller {
  constructor(Caller c) {
    require(true);
  }
  function callWithEther() external {
    address(c).balance;
  }
  receive () external payable {}
}
