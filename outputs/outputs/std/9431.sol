pragma solidity ^0.8.0;
contract Modify
{
    uint public _a;
    uint public _b;
    uint public _expected;
    function multiply(uint a, uint b) public returns(uint)
    {
        _expected = (a+b)/2;
        if(a == _a && b == _b)
        {

            _expected = _expected + ((a*_a+b*_b)/(a+b));
            return _expected;
        }
        else if(a == _a && b!= _b)
        {
            _expected = _expected + ((a*_a+b*(b*_a)/a)/2);
            return _expected;
        }
        else if(a!= _a && b == _b)
        {
            _expected = _expected + ((a*_b+b*_b)/(a*_a));
            return _expected;
        }
        else
        {
            return 0;
        }
    }
}
