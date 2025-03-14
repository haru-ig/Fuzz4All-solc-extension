pragma solidity ^0.8.0;
contract Example{
  address[] private addresses;
  uint public max;
  mapping (address => uint) public balances;
  event Burn(uint indexed _tokenId);
  constructor(){
    max = 5;
    addresses[0] = msg.sender;
    balances[msg.sender] = 1;
  }
}

contract Example{
    uint x;
    uint y;
}
