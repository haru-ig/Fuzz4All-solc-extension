pragma solidity ^0.8.0;
contract MutateCaller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() public nonpayable {}
    constructor(address payable owner) {
            payeeBackup = payee;
            payee = owner;
    }
    event EtherReceived(address payee);
}
