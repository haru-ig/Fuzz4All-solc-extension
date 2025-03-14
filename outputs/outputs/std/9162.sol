pragma solidity ^0.8.0;
contract MutatedSemanticEquivalenceContract {
    function setAddWithSemanticsWithSemanticalCorrectness() internal pure {
    }
}
contract CompiledMutatedSemanticEquivalenceContract {
    function checkAddSemanticsWithSemanticalCorrectness(uint256 x1, uint256 x2) private view returns(uint256) {
        return x1 + x2;
    }
}
contract SymbolicMutatedSemanticEquivalenceContract {
    function setAddWithSemanticsUsingSymbolsInMutation(uint256 x1, uint256 x2) private doesNotMutate {
        x1 = addWithSemantics_mutX(x1, x2);
    }
    function mutateAddWithSemanticsWithSymbolicCorrectness(uint256 x1, uint256 x2) internal view returns (uint256) {
        return addWithSemantics_mutX(x1, x2);
    }
}
