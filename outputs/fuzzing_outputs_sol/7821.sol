pragma solidity ^0.8.0;
contract Caller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable {
            payee = payeeBackup;
            emit EtherReceived(payee);
    }
    constructor() {
            payeeBackup = payee;
    }
    event EtherReceived(address payee);
}
