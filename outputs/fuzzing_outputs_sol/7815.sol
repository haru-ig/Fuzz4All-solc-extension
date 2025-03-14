pragma solidity ^0.8.0;

contract MutateCaller {
    address payable payee;
    address payable payeeBackup;
    constructor() {
        payeeBackup = payee;
    }
}
