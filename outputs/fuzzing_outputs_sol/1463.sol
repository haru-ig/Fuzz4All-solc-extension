pragma solidity ^0.8.0;
contract SemanticMutationsExample {
    address payable smartContract1;
    address payable smartContract2;
    function semanticMutatedExample(address payable _addr) public {
        smartContract1 = _addr;
    }
}
