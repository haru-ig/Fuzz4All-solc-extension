pragma solidity ^0.8.0;
contract Mutator
{
    address beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function mutator() payable external {
        amount += msg.value;
    }
}
