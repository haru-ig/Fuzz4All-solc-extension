pragma solidity ^0.8.0;
contract MyContract {
  receive() external payable {}
}

contract Caller {
  function callContract(address c) public {
    c.call{value: 0.01}("");
  }
  function fallback() public payable {}
}
