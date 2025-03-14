pragma solidity ^0.8.0;
contract Simple {
  function callContract() public payable {
    callContract(address(0));
  }
  function callContract(address caller) public payable {
    caller.transfer(balanceOf(msg. sender));
  }
}
