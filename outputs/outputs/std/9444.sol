pragma solidity ^0.8.0;
contract SetMax
{
    uint public a;
    uint public b;
    uint public expected;
    uint public result;
    function setMax() public {
        expected = 10**32;
        a = 2**250 - 1;
        b = 10**32;
        if(a == b && a == expected)
        {
            result = expected + ((a+b)/(2*a+b));
            return a == result;
        }
        else if(b!= expected)
        {
            result = expected * ((a+b)/(a*a+b*b));
            return a == result;
        }
        else
        {
            return false;
        }
    }
}
