pragma solidity ^0.8.0;
contract MutatedGeneration {
    function callAddWithSemantics(uint256 x1, uint256 x2) internal pure returns(uint256) {
        return SemanticEquivalenceContract.addWithSemantics(x1, x2);
    }
}
