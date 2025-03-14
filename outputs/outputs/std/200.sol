pragma solidity ^0.8.0;
contract TokenArray {
  mapping(address => uint256) private _balances;
  mapping(address => mapping(address => uint256)) private _allowed;
  uint256 private _totalSupply;
}
