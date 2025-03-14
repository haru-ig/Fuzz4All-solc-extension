pragma solidity ^0.8.0;
contract MutateCaller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback(uint payable) external notPayable {}
    constructor() {
            payeeBackup = payee;
    }
    event EtherReceived(address payee);
}
