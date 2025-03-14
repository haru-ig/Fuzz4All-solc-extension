pragma solidity ^0.8.0;
contract Caller
{
    address payable beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    receive() external payable {
        if (msg.value == amount) {
            beneficiary.transfer(msg.value);
        }
    }
}
