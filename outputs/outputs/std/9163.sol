pragma solidity ^0.8.0;
contract MutatedSemanticEquivalenceContract {
    function addWithMutatedSemantics(uint256 x1, uint256 x2) internal pure returns(uint256) {
        x1 += addWithSemantics(x1, x2);
        return x1;
    }
}
