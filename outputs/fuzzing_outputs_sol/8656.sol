pragma solidity ^0.8.0;
contract Mutator2 {
    address payable beneficiary;
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    function mutator2() external {
        beneficiary.transfer(amount);
    }
}
