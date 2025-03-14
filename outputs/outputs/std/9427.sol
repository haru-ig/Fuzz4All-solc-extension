pragma solidity ^0.8.0;
contract Mutate
{
    uint public _a;
    uint public _b;
    function multiply() public
    {
        Mutate _a = new Mutate(1);
        _b = _a[1];
        _a[1]=Mutate(_b+2);
        _result=calculate(_a[1],calculate(_a[1],_b+2)+2);
    }
    function calculate(uint a, uint b) public returns(uint)
    {
        return _a*_b/_a + (a*b)/_a*(b*_a/_a);
    }
}
