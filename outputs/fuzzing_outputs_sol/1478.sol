pragma solidity ^0.8.0;
contract SemanticMutationsExample {
    function semanticMutatedExample() public {
        address payable smartContract = address(0x42);
        SemanticMutationsExample2 semantic_contract = safeTransfer(smartContract);
        semantic_contract.semanticMutatedExample(smartContract);
    }

    function safeTransfer(address payable _addr) public payable returns (address payable safe_contract) {
        require(msg.value > 0, "Caller cannot pay 0 ETH");
        return _addr;
    }
}
