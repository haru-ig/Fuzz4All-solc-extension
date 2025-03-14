pragma solidity ^0.8.0;
contract SemanticMutationExample3 {
    address payable smartContract3;
    function semanticMutationExample(address payable _addr) public {
        smartContract3 = _addr;
    }
}
