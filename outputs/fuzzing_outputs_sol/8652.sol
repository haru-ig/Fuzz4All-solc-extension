pragma solidity ^0.8.0;
contract Mutator2 {
    address payable beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        amount = 1;
        beneficiary = _beneficiary;
    }
    receive() external payable {
        mutator2 = address(new Mutator2(beneficiary));
        amount++;
    }
    address mutator2;
}
