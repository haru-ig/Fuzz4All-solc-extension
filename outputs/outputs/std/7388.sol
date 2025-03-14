pragma solidity ^0.8.0;
contract MyAccount {
    uint public accountNumber;
    uint public balance;
    mapping (address => uint) public balances;
    constructor () {
        accountNumber = 4;

    }
}
