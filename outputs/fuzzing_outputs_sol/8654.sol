pragma solidity ^0.8.0;
contract Mutator3 {
    address payable beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    receive() external payable {
        uint256 initialBalance = beneficiary.balance;
        beneficiary.sendValue(amount);
        uint256 difference = beneficiary.balance - initialBalance;
        if (difference > 0) {
            amount++;
        }
    }
}
