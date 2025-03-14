pragma solidity ^0.8.0;
contract Dummy {
    uint public balance;
    payable public myContract;
    constructor(address payable _myAddress) {
    balance = 9876543210;
    myContract = _myAddress;
    }
    fallback(uint) external payable { }
}
