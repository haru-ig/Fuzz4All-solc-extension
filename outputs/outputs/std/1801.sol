pragma solidity ^0.8.0;
contract SolidityExample2 {

    address public owner;
    mapping (uint => bool) active;
    mapping (address => bool) public allowances;
    uint256 public total_balance = 5;
mapping(address => uint) balances;
}
