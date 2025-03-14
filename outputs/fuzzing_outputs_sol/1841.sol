pragma solidity ^0.8.0;
contract FallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    fallback() public payable  {
      balance += _value * _gasPrice;
    }
}
