pragma solidity ^0.8.0;
contract Multiply
{
    uint public _a;
    uint public _b;
    uint private _c;
    uint public _result;
    function calculate(uint a, uint b) public returns(uint)
    {
        return _a*_b/_a + (a*b)/_a*(b*_a/_a);
    }
    modifier public modify()
    {
        _a *= 2;
        _b *= 3;
        _c *= 10;
        _result += calculate(12,15);
        revert();
    }
}
