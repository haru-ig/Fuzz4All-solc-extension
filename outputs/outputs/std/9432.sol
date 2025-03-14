pragma solidity ^0.8.0;
contract Modify
{
    uint public _a;
    uint public _b;
    uint public _expected;
    uint8 var_uint8;
    function calculate(uint a, uint b) public returns(uint)
    {
        _expected = (b*b)/2;
        if(a == _a && b == _b)
        {
            _expected = _expected + (b*(_a*a)/2);
            return _expected;
        }
        else if(a == _a && b!= _b)
        {
            _expected = _expected + (a*_a)/2 + (b*(a*_a)/2);
            return _expected;
        }
        else if(a!= _a && b == _b)
        {
            _expected = _expected + (a*_b)/2 + (b*(a*_b)/(a*_a));
            return _expected;
        }
        else
        {
            return 0;
        }
    }
