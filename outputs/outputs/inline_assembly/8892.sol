pragma solidity ^0.8.0;
contract Good_SemanticallyEquivalent
{
    uint x;
    struct S {}
    function test() public {
        x = (S(x)) + 1;
    }
}
