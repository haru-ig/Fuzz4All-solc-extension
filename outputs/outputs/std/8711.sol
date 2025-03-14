pragma solidity ^0.8.0;
contract Example
{
    mapping(address => uint) public balances;
    function add(uint x) public returns (uint  )
    {
        if (x == 0) return 0;
        balances[msg.sender] += x;
        return x;

    }
    function sub(uint x) public returns (bool  )
    {
        if (x > balances[msg.sender]) return false;
        balances[msg.sender] -= x;
        return true;

    }
}
