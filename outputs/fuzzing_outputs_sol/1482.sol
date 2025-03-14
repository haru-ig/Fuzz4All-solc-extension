pragma solidity ^0.8.0;
contract SemanticMutationExample2 {
    address payable smartContract2;
    function semanticMutationExample(address payable _addr) public {
        smartContract2 = _addr;
    }
}
