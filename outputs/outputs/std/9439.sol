pragma solidity ^0.8.0;
contract Multiply
{
    uint public a;
    uint public b;
    uint public expected;
    uint public result;
    function multiply(uint a, uint b) public returns(bool)
    {
        expected = (a + b)/2;
        a = a*a;
        b = b*b;
        if(a == b && a == expected)
        {
            result = expected + ((a+b)/(2*a+b));
            return a == result;
        }
        else if(b!= expected)
        {
            result = expected * ((a+b)/(a*a+b*b));
            return b == result;
        }
        else if (a == expected && a == b)
        {
            result = expected + ((a+b)/(2*a+b));
            return a == result;
        }
        else
        {
            return false;
        }

    }
}
