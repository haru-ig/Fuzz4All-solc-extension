pragma solidity ^0.8.0;
contract Mutater335 {
    address public payee;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() calldata external {
        payee;
    }
}
