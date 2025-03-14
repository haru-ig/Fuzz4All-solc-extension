pragma solidity ^0.8.0;
contract Mutation334 {
    bytes32 constant EMPTY_TX = "0x";
    bytes32 constant EMPTY_HASH = "0x";
    address payable public payee;
    constructor() {
        payee = msg.sender;
    }
    receive payable external {
        payee;
    }
}
