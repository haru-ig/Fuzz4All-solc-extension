pragma solidity ^0.8.0;
contract Caller {
    address receiver;
    constructor() {
        receiver = new contract().transfer.value(0.01 ether(25));
    }
}
