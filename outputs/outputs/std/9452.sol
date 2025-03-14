pragma solidity ^0.8.0;
contract Max
{
    uint public a;
    uint public b;
    function max(uint a, uint b) public returns(uint)
    {
        return a == b? 0 : a;
    }
}
