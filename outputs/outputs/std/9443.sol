pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;

    function sum(uint a, uint b) public returns(bool)
    {
        a = a > b? a : b;
        b = a < b? b: a;
        if(a+b >= 0 && a < b)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
