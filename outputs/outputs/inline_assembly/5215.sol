pragma solidity ^0.8.0;
contract C {
  bytes32[] public counter;
  mapping(bytes32 => uint) public count;
  constructor(bytes32 payee) public {
    msg.sender.transfer(address(this).balance);
    count[msg.sender] = 1;
  }
  function mutatedCounter(bytes32 idx) public {
    count[idx] += 1;
  }
  mapping(bytes32 => uint) public count;
}
