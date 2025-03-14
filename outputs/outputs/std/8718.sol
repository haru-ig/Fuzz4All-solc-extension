pragma solidity ^0.8.0;
contract Example
{

    function balances() public view returns (uint)
    {
        return balances[msg.sender];
    }

    function add(uint x) public returns (uint)
    {
        if (x == 0) return 0;
        return balances[msg.sender] += x;
    }

    function sub(uint x) public returns (bool )
    {
        if (x > balances[msg.sender]) return false;
        return balances[msg.sender] -= x;
    }
}
