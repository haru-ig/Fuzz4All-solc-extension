pragma solidity ^0.8.0;
contract Example22 {
  uint256 private value;
  function set(uint256 a) public{
    value = a;
  }
  function get() public view returns(uint256) {
    return value;
  }
  receive() payable public{




      value = msg.value;
  }
}
