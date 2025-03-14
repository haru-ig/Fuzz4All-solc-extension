pragma solidity ^0.8.0;
contract MutatedSemanticEquivalenceContract is SemanticEquivalenceContract {
    function mutateAndFindMax() internal view returns(uint256) {
        return 1;
    }
}
