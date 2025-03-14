pragma solidity ^0.8.0;
contract E6_mutated
{
    uint public result;
    function add(uint a, uint b) public returns (uint)
    {
       result += a;
       return result - b;
    }
}
