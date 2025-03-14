pragma solidity ^0.8.0;
contract Injection_03
{
    uint constant maxInt = 18446744073709551616;
    function get (uint a, uint b, uint c) public returns (uint x1, uint x2, uint x3)
    {
        x1 = a;
        x2 = b;
        x3 = c;
    }
}
