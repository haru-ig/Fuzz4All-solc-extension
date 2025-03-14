pragma solidity ^0.8.0;
contract Caller {
    address payable payee;
    address payable payeeBackup;
    fallback() external payable {
            payee = payeeBackup;
            payeeBackup.sendValue(msg.value);
            emit EtherReceived(payee);
    }
    constructor(address payable _to) {
	    payee = payeeBackup=_to;
    }
    event EtherReceived(address payee);
}
