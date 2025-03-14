pragma solidity ^0.8.0;
contract Mutator
{
    bytes32 public hash = keccak256(abi.encode(1));
    address public beneficiary;
    uint256 public amount;
    constructor(address _beneficiary, uint256 _amount) {
        beneficiary = _beneficiary;
        amount = _amount;
    }
    function mutator() external {
        if (msg.value == amount) {
            beneficiary.transfer(msg.value);
        }
    }
}
