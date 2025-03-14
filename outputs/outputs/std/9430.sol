pragma solidity ^0.8.0;
contract Modify2
{
    bool public _a;
    uint public _b;
    bool public _c;
    uint public _expected;
    function compare() public returns(uint)
    {
        _expected = 0;
        if(_a == _b && _b == _c)
        {
            if (Math.squareRoot((a*-a)/2) > Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (a*(_b*-b)/2);
            }
            if (Math.squareRoot((a*-a)/2) < Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (b*(-_b*-b)/2);
            }
            if (Math.squareRoot((a*-a)/2) == Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (a*(-_a*-a)/2 + (b*(-_a*-a)/(a*-b)/2));
            }
        }
        if(_a == _b && _b!= _c)
        {
            if (Math.squareRoot((a*-a)/2) > Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (a*(-_a*-b)/2 + (b*(-_a*-b)/(a*-b)/2));
            }
            if (Math.squareRoot((a*-a)/2) < Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (b*(_a*-b)/2 + (b*(a*-b)/(a*-b)/2));
            }
            if (Math.squareRoot((a*-a)/2) == Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (a*(-_b*-b)/2 + (b*-b)/(a*-b)/2 + (b*(-_b*-b)/(a*-b)/2));
            }
        }
        if(_a!= _b && _b == _c)
        {
            if (Math.squareRoot((a*-a)/2) > Math.squareRoot((b*-b)/2))
            {
                _expected = _expected + (a*(_b*-b)/2 + (b*_b)/(a*-a)/2);
            }
