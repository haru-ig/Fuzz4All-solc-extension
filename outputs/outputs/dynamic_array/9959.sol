pragma solidity ^0.8.0;
contract SemanticTestMutated {
    uint arrayIndex;
    function incrementIndex() public {
        arrayIndex += 1;
    }
    function() public {
        incrementIndex();
    }
}
