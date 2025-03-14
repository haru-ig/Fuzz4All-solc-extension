pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    address payable[] private contractAddresses;
    mapping(address => uint) public amount;
    constructor() {
        contractAddresses.push(address(0));
    }
