pragma solidity ^0.8.0;
contract SemanticEquivalent {
    constructor(address _contract) {
        require(_contract.isContract());
    }
    receive() external payable {}
}
