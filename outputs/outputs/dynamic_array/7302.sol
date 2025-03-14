pragma solidity ^0.8.0;


contract TandemToken {
event Mint(address indexed to, uint256 amount, bool approval);

address public owner = msg.sender;
address[]  public minters;
uint public totalSupply;
mapping (address => uint256) public balanceOf;
mapping (address => mapping (address => uint256)) allowed;
