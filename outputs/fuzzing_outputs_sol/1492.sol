pragma solidity ^0.8.0;
contract SemanticMutationExample {
    address payable smartContract;
    function semanticMutation(address payable _addr) public {
        address iEthereumWalletAddress = msg.sender;
        smartContract = _addr;
    }
}
