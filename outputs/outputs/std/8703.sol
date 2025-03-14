pragma solidity ^0.8.0;
contract Example
{
    mapping(address => uint) public balances;
    function add(uint _x) public returns (uint) {
        uint x = balances[msg.sender] + _x;
        balances[msg.sender] = x;
        return x;
    }
    function sub(uint _x) public returns (bool success) {
        uint x = balances[msg.sender] - _x;
        balances[msg.sender] = x;
        return x >= 0;
    }
}
