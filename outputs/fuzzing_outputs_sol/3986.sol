pragma solidity ^0.8.0;
contract Example22 {
  uint256 public value;
  modifier payable {
    _;
    emit SetSuccess(msg.sender, msg.value);
    value = msg.value;
  }
  function set(uint256 a) public {
    value = a;
  }
}

contract Example23 {
  uint256 public value;
  function set(uint256 a, uint256 b) public payable {
    value = a;
  }
}
