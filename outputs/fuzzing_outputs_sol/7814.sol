pragma solidity ^0.8.0;
contract MutatedSender {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable {
        payeeBackup = payee;
        payee = payee_new;
    }
    function setPayee(address payable payee_new) external {
        payeeBackup = payee;
        payee = payee_new;
    }
}
