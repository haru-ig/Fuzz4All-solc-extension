pragma solidity ^0.8.0;
contract Example
{
    mapping(address => uint) public balances;
    constructor (uint _max) public {
    	balances[_max] = _max;
    }
    function add(uint x) public returns (bool )
    {
        if (_max <= balances[msg.sender]) return false;
        balances[msg.sender] += x;
        return true;
    }
    function sub(uint _x) public returns (bool )
    {
        if (balances[msg.sender] < _x) return false;
        balances[msg.sender] -= _x;
        return true;
    }
}
