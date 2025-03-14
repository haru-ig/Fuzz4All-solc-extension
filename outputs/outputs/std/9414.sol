pragma solidity ^0.8.0;
contract MutateInt
{
    uint public _a;
    uint[10] public _values;
    function mutateA(uint x) public returns(uint)
    {
        return _a/(_a + 4);
    }
    function mutateB(uint a, uint b, uint x) public returns(uint)
    {
        return (_a + a/b)/(_a + 15);
    }
}
