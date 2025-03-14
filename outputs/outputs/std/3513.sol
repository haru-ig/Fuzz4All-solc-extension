pragma solidity ^0.8.0;
contract TestAddress {
    address addrOne;
    bytes8 str;

    constructor() {
        addrOne = msg.sender;
        str = msg.data;
    }
}
