pragma solidity ^0.8.0;
contract Bad_SemanticallyEquivalent
{
    uint x;
    function test() public {
        x = x / x * x * x & 0xFFFFFFFFFFFFFFFF;
    }
}
