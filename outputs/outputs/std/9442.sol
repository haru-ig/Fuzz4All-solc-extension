pragma solidity ^0.8.0;
contract Subtract
{
    uint public a;
    uint public b;
    uint public expected;
    uint public result;
    function subtract(uint a, uint b) public returns(bool)
    {
        a = a-b;
        expected = a;
        b = b-b;
        if(a+b == a)
        {
            result = a - expected;
            return a == result;
        }
        else if(a - b + b!= a || a - expected == a || expected - b == a)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
