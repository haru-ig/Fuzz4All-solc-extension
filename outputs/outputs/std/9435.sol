pragma solidity ^0.8.0;
contract Add
{
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _expected;
    function add(uint a, uint b, uint c) public returns(uint)
    {
        _expected = (a+b+c)/3;
        if(a == _a && b == _b && c == _c)
        {
            return (_expected + (((a+b)*(a+b)+_expected*(a+b+c))/3));
        }
        else if(a == _a && b!= _b && c == _c)
        {
            return ((_expected + (((a+b)*(a+b)+_expected*(a+b+c))/(a+b)))/3);
        }
        else if(a!= _a && b == _b && c == _c)
        {
            return ((_expected + (((a+b)*(_a*_a-_b*_b)-_expected*(a+b+c)/a))/(a*_a))))/3);
        }
        else i if(a == _a && b == _b && c!= _c)
        {
            return ((_expected + (((a+(_b*_b)/2)*_a)*(_b*_b-(_b*_b)/2))/3))/(3*a));
        }
        else
        {
            return a;
        }
    }
}
