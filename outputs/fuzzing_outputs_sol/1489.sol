pragma solidity ^0.8.0;
contract SemanticMutationExample2A {
    address payable smartContract2A;
    address payable smartContract2B;
    function semanticMutationExample(address payable _addr) public {
        if (block.timestamp == 0) {
            smartContract2A = _addr;
        }
        else {
            smartContract2B = _addr;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticMutationExample2B {

    function semanticMutationExample(address payable _addr) public {
        address s = _addr;
        if (block.timestamp == 0) {
            smartContract2A = _addr;
        }
        else {
            smartContract2B = s;
        }
    }
}
