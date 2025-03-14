pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_12{
    uint test = 2;
    uint x = -1;
    uint[] y;
    function test() public pure returns (bool) {
        return true;
    }
    function f() public pure returns (bool) {
        return a[2]=x && test==0 && 0x7fffffffe + 10**10;
    }
    uint8[] internal a;
}
