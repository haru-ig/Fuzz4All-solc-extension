pragma solidity ^0.8.0;
contract SemanticMutationExample31 is SemanticMutationExample3 {

    function semanticMutationExample(address payable _addr) public {
        smartContract3 = _addr;
    }
}
