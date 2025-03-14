pragma solidity ^0.8.0;
contract SemanticMutationsExample1 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract1 = _addr;
    }
    address payable smartContract1;
}
