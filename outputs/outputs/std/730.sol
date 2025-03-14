pragma solidity ^0.8.0;
interface MutatedMinter {
  mapping(address => uint256) public balances;
  mapping(address => mapping(address => bool)) public allowed;
  uint256 public totalSupply;

  event Transfer(address indexed from, address indexed to, uint256 amount);
  event Approval(address indexed owner, address indexed spender, uint256 amount);
}
