pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract2 = _addr;
    }
    address payable smartContract2;
}
