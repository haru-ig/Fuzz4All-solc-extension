pragma solidity ^0.8.0;
contract EasierBetter_SemanticallyEquivalent
{
    uint public x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x ^ 0xFFFFFFFFFFFFFFFF;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint _x) public {
        x = _x;
    }
}
contract SemanticallyDifferent
{
    uint public x;
    function test() public
    {
        x = 4294967290;
    }
}
contract VerySemanticallyDifferent
{
    uint public x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x = 4294967290;
    }
    function set(uint _x) public {
        x = _x;
    }
}
