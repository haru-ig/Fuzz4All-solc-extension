pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray3 is SemanticIndependenceAndDynamicArray2 {
    uint256 private constant MIN_BALANCE = 500;
    constructor () {
        assert(msg.value >= MIN_BALANCE);
        accountToValue[msg.sender] = msg.value;
    }
}
