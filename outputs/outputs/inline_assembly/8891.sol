pragma solidity ^0.8.0;
contract Good_SemanticallyEquivalent
{
    event a(uint x);
    uint x;
    function test() public {
        x = x / x * x * x % 0xFFFFFFFFFFFFFFFF;
    }
}
