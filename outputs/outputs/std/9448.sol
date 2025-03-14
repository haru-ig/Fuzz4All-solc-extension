pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;
    uint constant HIGH = 4294967295;
    uint constant LOW  = 0;
    function sum(uint a, uint b) public returns(bool)
    {
        uint max = HIGH > a || a < LOW? HIGH : a;
        uint min = HIGH > b || b < LOW? HIGH : b;
        return ((max - min) == a*b);
    }
}
