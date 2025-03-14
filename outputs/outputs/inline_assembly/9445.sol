pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;

  struct User {
        uint balance;
    }

  struct Account {
    uint balance;
  }

  mapping (address => Account) public accounts;

  fallback()
    external payable {
    accounts[msg.sender] = Account(msg.value);
    accounts[msg.sender].balance = msg.value;
    accounts[msg.sender].balance += getMyBalance();
  }

  function getMyBalance() public view returns (uint balance){
    if (accounts[msg.sender].balance == 0)
      return 0;
    else
      return accounts[msg.sender].balance;
  }
}
