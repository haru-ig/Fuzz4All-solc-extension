pragma solidity ^0.8.0;
contract Good_SemanticallyEquivalent
{
    uint x;
    function test() public {
        uint64 tmp = x;
        x = (x / x * x * x) & 0xFFFFFFFFFFFFFFFF;
    }
}
