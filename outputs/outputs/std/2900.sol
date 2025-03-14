pragma solidity ^0.8.0;
contract MutatedString {
    address owner;
    uint256 public value;
    string memory public data;
    constructor() {owner = msg.sender;}
    modifier onlyOwner {if (msg.sender == owner) _;}
}
