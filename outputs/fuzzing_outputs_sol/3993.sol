pragma solidity ^0.8.0;
contract Example22 {
  uint public value;
  receive() external payable {
    if (!(msg.value > 5)) revert();
    value = value.add(msg.value);
  }
}
