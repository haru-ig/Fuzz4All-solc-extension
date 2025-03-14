pragma solidity ^0.8.0;
contract Receiver
{
    address beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    receive() payable external {}
}
