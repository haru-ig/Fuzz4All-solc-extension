pragma solidity ^0.8.0;
contract SemanticMutationsExample1 is SemanticMutationsExample2 {
    fallback () external payable {
        smartContract();
    }
    function smartContract() public payable {
        smartContract2.transfers(msg.value, _msgSender());
    }
}
