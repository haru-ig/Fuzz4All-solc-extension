pragma solidity ^0.8.0;
contract NotMutatingCaller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable {
            payeeBackup = payee;
    }
    constructor() {
            payeeBackup = payee;
    }
    event EtherReceived(address payee);
}
