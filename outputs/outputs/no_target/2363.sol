pragma solidity ^0.8.0;


contract mutation_0c
{
}
contract mutation_0d
{
}
contract mutation_0e
{
}
contract mutation_0f
{
}
contract mutation_0g
{
}
contract mutation
{
}
contract mutation_p1
{
    function foo(uint _n) public
    view returns (uint160)
    {
        (uint160 _n1, uint _n2) = (uint160(_n), _n);
        unchecked
        {
            return uint160(-((_n1 - ((~uint160(0))) - (_n2 | uint(0x1000000000000000))))) >> 16);
        }
    }
}
contract mutation_p2
{
    function foo(uint _n) public
    view returns (uint160)
    {
        (uint160 _n2) = unchecked
        {
            return uint160(-((_n - uint(uint160(0x1000000000000000))) & ((_n - (uint(uint(-_n))))) >> 16));
        }
    }
}
contract mutation_p3
{
    function foo(uint _n) public
    view returns (uint160)
    {
        uint _n1 = uint160(0x10000000000000000);
        uint _n2 = unchecked
        {
            return uint160(-((_n1 - ((_n1 | uint(uint160(0x1000000000000000)))) + (_n2 | uint(uint160(0x10000000000000000)))) >> 16));
        }
    }
}
contract mutation_p4
{
    function foo(uint _n) public
    view returns (uint160)
    {
        return uint160(-((uint(_n) >> 0) & ((uint(_n) + uint160(0x10000000000000000))) >> 16));
    }
}
contract mutation_p5
{
    function foo(uint _n) public
    view returns (uint160)
    {
        uint _n2 = unchecked
        {
            return uint160(-((uint160(0xFFFFF000
