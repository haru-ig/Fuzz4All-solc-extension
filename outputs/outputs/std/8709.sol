pragma solidity ^0.8.0;
contract Example
{
    mapping(address => uint) public balances;
    function add(uint _x) public returns (uint)
    {
        if (_x == 0) return 0;
        uint x = balances[msg.sender] + _x;
        balances[msg.sender] = x;
        return x;
    }
    function sub(uint _x) public returns (bool success)
    {
        if (_x > balances[msg.sender]) return false;
        uint x = balances[msg.sender] - _x;
        balances[msg.sender] = x;
        return x >= 0;
    }
}
