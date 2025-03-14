pragma solidity ^0.8.0;
contract Mutator {
  address[8] public accounts;
  uint256[] public balanceChanges;
  uint256[8] accountBalanceChanges;
  constructor() {
    for(uint256 i = 0; i < 8; i++) {
      accounts[i] = msg.sender;
    }
    accounts[8] = msg.sender;
  }
  function deposit() public {
    accounts[msg.sender] = msg.value;
  }
  function withdraw(uint256 _amount) public {
    msg.sender.transfer(_amount);
  }
  function transfer(uint256 _from, uint256 _to, uint256 _amount) public {
    accounts[_from].transfer(_amount);
    accounts[_to].transfer(_amount);
    accountBalanceChanges[_from] += _amount;
    accountBalanceChanges[_to] -= _amount;
  }
  function read(uint256 _index) public view returns (uint256){
    return accountBalanceChanges[_index];
  }
  function changeBalance(uint256 _index, uint256 _amount) public {
    uint256 currentAccountBalance = accountBalanceChanges[_index];
    accounts[_index].transfer(currentAccountBalance);
    accountBalanceChanges[_index] = _amount;
  }
}
