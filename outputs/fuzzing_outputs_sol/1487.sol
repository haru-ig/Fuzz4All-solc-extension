pragma solidity ^0.8.0;
contract SemanticMutationExample2 {

    address payable mutable smartContract2;
    function semanticMutationExample(address payable _addr) public {
        smartContract2 = _addr;
    }
}
contract SemanticMutationExample1 {
    SemanticMutationExample2 semanticMutationExample;
    function semanticMutationExample2(address payable _addr) public {
        semanticMutationExample.semanticMutationExample2(_addr);
    }
}
