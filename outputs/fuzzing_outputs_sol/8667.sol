pragma solidity ^0.8.0;
contract Resilient
{
    address payable beneficiary;
    uint256 amount;
    bytes32 public hash = keccak256(abi.encode(this, beneficiary, amount));
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function resilient() payable external {
        beneficiary.transfer(msg.value * 9);
    }
    fallback() external payable {
        revert("Failure fallback");
    }
    receive() external payable {
        revert("Failure receive");
    }
}
