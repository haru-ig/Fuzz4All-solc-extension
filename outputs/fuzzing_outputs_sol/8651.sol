pragma solidity ^0.8.0;
contract Mutator1 {
    uint256 amount;
    address payable beneficiary;
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    function mutator1() external {
        uint256 initialBalance = beneficiary.balance;
        beneficiary.transfer(amount);
        uint256 difference = beneficiary.balance - initialBalance;
        if (difference > 0) {
            amount++;
        }
    }
}
