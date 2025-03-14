pragma solidity ^0.8.0;
contract SemanticEquivalenceContract {
    function addWithSemantics(uint256 x1, uint256 x2) internal pure returns(uint256) {
        return x1 + x2;
    }
}
