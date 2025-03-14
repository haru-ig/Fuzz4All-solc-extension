pragma solidity ^0.8.0;
contract MultiplyInt
{
    uint private _a;
    uint public _b;
    uint public _expected;
    function multiplyA(uint x) public returns(uint)
    {
        return (_a*x)/(_a + 5);
    }
    function multiplyB(uint a, uint b, uint x) public returns(uint)
    {
        return (_a*a + a*x*b + x + _b*(a/b))/(_a + 22);
    }
    function multiplyC(uint a, uint b, uint x) public returns(uint)
    {
        _a = uint10;
        a = uint10;
        b = uint10;
        x = uint10;
        _b = uint10;
        return (_b*(_b + x + _b))/(_a + 15);
    }

}
