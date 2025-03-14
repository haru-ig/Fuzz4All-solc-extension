pragma solidity ^0.8.0;
contract MutateCaller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable {
            payee = payeeBackup;
    }
    constructor() {
            payeeBackup = payee;
    }
    event EtherSent(address payee);
    function setPayee(address payee_) external {
            payeeBackup = payee;
            payee = payee_;
    }
}
