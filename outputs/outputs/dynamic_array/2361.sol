pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedAssignment_b593030c9997a5606b39a93d79dc21e9
{
    function f(uint[] calldata c) public pure returns (uint[]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_01e21e2b273ecfced915ad6d4d822963
{
    function f(uint[] c) public pure returns (uint[] memory) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_248309174af1189458a37bfac29305cc
{
    function f(uint[][] storage c) public pure returns (uint[9]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_b62f7ef0c547271b9a0241fa426ed1c2
{
    function f(uint[][] memory c) public pure returns (uint[12]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_001e3785aa958034db27f8025aa35a1e
{
    function f(uint[][][] calldata c) public pure returns (uint[][]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_c0c0df63b4603448d37a723fe1922633
{
    function f(uint[][][] memory c) public pure returns (uint[][]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_95a8a616ff9152e07c2d4a3247b33524
{
    function f(uint[][] c) public pure returns (uint[(10, 10, 10)]) {
        return c;
    }
}
contract SemanticEquivalence_DynamicallySizedAssignment_b6a0e55e579efab5a146b97be78ad86a
{
    function f(uint[10][10][10][10] memory c) public pure returns (uint[10][][10][][]) {
        return c
