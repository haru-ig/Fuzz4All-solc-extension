pragma solidity ^0.8.0;
contract Test42_DynamicArray {
    address[] public admin;
    constructor () public {
        admin.push(msg.sender);
        admin.push(admin[1]);
    }
}
