pragma solidity ^0.8.0;
contract Mutator
{
    address payable beneficiary;
    uint256 amount;
    bytes32 public hash = keccak256(abi.encode(this, beneficiary, amount));
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function mutator() payable external {
        if (msg.value == amount) {
            beneficiary.transfer(msg.value);
        }
    }
}
