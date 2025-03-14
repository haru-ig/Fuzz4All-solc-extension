pragma solidity ^0.8.0;
contract Multiply_
{
    uint public _b;
    uint public _a;
    uint public _result;
    function calculate(uint a, uint b) public returns(uint)
    {
        return _a*b/_a + (b*a)/_a;
    }
    function updateA(uint a) public
    {
        _a = a;
    }
    function updateB(uint b) public
    {
        _b = b;
    }
}
