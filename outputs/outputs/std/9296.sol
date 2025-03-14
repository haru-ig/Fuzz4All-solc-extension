pragma solidity ^0.8.0;
contract SemanticallyEquiv
{
    function semanticallyEquivalent(byte a, uint128 b, bytes32 c, bytes memory d) public pure returns(bool) {
        return true;
    }
    function semanticallyEquivalent2(uint256 a, uint8 b, int256 c) public pure returns(bool) {
        return true;
    }
}
contract SemanticEquiv
{
    function semanticEquivalent(byte a, uint128 b, bytes32 c, bytes memory d) public pure returns(bool) { return true; }
    function semanticEquivalent2(uint256 a, uint8 b, int256 c) public pure returns(bool) { return true;}
}
