pragma solidity ^0.8.0;
contract MutatedCaller {
    address payable payee;
    address payable payeeBackup;
    receive() external payable {}
    fallback() external payable {
            payee = payeeBackup;
    }
    function setPayee(address payable payee_new) external {
            payeeBackup = payee;
            payee = payee_new;
    }
}
