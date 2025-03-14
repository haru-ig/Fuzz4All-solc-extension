pragma solidity ^0.8.0;
contract SemanticMutationExample3 {
    address payable smartContract2;
    function semanticMutationExample(address _addr) public {
        smartContract2 = msg.sender;
    }
}
