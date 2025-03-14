pragma solidity ^0.8.0;
contract SemanticMutationsExample {
    address payable originalAddress;

    constructor() {
        originalAddress = msg.sender;
        smartContract2 = originalAddress;
    }
    function semanticMutatedExample(uint256 _int) external {   }
}
