pragma solidity ^0.8.0;
contract SemanticMutationExample2 {
    address payable smartContract2;
    function semanticMutationExample(address payable _addr) public {
        address iEthereumWalletAddress = msg.sender;
        smartContract2 = _addr;
    }
}
