pragma solidity ^0.8.0;
contract Mutator
{
    address payable beneficiary;
    bytes32 public hash = keccak256(abi.encode(this, beneficiary, address(this)));
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function mutator() payable external {
        if (addr.balance == amount) {
            beneficiary.transfer(msg.value);
        }
    }
}
