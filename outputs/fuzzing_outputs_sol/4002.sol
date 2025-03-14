pragma solidity ^0.8.0;
contract Example24 {
  mapping(address => uint) valueMapping;
  function fallback(uint _value) external payable {
    valueMapping[msg.sender] += _value;
  }
}
