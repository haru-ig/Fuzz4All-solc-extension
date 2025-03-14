pragma solidity ^0.8.0;
contract C {
mapping (address => uint256) public balances;
uint256 public value;
constructor(uint256 i) public {
balances[0x000000000000000000000000000000000000000] = i; }
}
