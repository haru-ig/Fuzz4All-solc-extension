pragma solidity ^0.8.0;
interface Mutator2 {
    address payable newBeneficiary;
    function mutator2() external;
}
contract Mutator3 is Mutator2 {
    address payable newBeneficiary;
    constructor(address payable _beneficiary) Mutator2(_beneficiary) {
        newBeneficiary = _beneficiary;
    }
    function mutator3() external {
        uint256 initialBalance = beneficiary.balance;
        beneficiary.transfer(amount);
        uint256 difference = beneficiary.balance - initialBalance;



        Mutator2(newBeneficiary);
    }
}
