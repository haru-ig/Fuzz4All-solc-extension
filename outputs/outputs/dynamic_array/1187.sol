pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray2 {
    constructor() payable {
        for (uint i = 0; i <= 500; i++) {
            accounts.push(accounts.length);
        }
    }
}
