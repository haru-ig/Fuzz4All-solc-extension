pragma solidity ^0.8.0;
contract SemanticDifferent {
    function mutate() public pure {
        SemanticDifferent2 semanticDifferent2 = new SemanticDifferent2;
    }
}
