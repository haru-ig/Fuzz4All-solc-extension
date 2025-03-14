pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;
    function sum(uint a, uint b) public returns(uint)
    {
        a = a > b? a : b;
        b = a < b? b: a;
        if(a+b >= 0)
        {
            return a+b;
        }
        else
        {
            return 0;
        }
    }
}
