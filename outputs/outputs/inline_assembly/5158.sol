pragma solidity ^0.8.0;
contract C {

  mapping(address => uint256) balances;
  uint256 public totalSupply;
  constructor() public payable {
    totalSupply = msg.value;
    balances[msg.sender] = totalSupply;
  }
  function checkCounter() public view returns (uint) {
    return balances[msg.sender];
  }
  function totalBalance() public view returns (uint) {
    return totalSupply;
  }
  function mutatedBalance() public returns (uint) {
    return balances[msg.sender] + msg.value;
  }
  function payee() public {
    if (to.sendValue(0))
      balances[msg.sender] += msg.value;
  }
}
