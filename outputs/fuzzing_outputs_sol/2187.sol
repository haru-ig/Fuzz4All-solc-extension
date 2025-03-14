pragma solidity ^0.8.0;
contract Mutater335 is Mutater334 {
    address internal public payeeinternal;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() external payable {
        payee;
    }
    receive internal {
        payeeinternal;
    }
    receive public {
        payee;
    }
    receive pure {}
}
