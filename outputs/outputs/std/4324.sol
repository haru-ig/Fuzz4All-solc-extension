pragma solidity ^0.8.0;
contract Mutate
{
    function MutateInt(uint a) public pure returns(uint)
    {
        return a;
    }
}
struct MyStruct
{
    uint Value;
    uint MaxValue;
}
contract ContractA
{
    function funcA(uint a) public
    {
        uint b = 0;
        (b,);
    }
    function funcB(MyStruct memory s) public
    {
        s.MaxValue;
    }
}
contract ContractB is ContractA
{
    function funcC() public
    {
        uint a = 1;
        uint b = 2;
        uint c;
    }
    function funcD(uint a, uint b) public {
        uint sum = 0;
        sum = a + b - 1;
    }
    function funcE(uint a) public pure
    {
        uint b = 1;
        uint c;
    }
}
contract Test
{
    function Test() public
    {
        uint a = 1;
    }
    function funcA(uint a) public
    {
        uint b = 1;
        (a,b);
    }
    function funcB(MyStruct memory s) public
    {
        uint c;
        c;
    }
    function funcC(uint a, uint b) public
    {
        uint c;
        c;
    }
    function funcD(uint a, uint b) public
    {
        uint c;
        c;
    }
    function funcE(uint a) public pure
    {
        uint b = 1;
        uint c;
    }
    function funcF() public pure
    {
        uint a;
    }
    function funcG(uint a) public pure
    {
        uint b;
    }
}
