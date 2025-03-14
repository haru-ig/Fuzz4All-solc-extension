pragma solidity ^0.8.0;
contract Caller
{
    address payable beneficiary;
    uint256 amount;
    bytes32 public hash = keccak256(abi.encode(this, beneficiary, amount));
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function setAmount(uint256 _a) public {
        amount = _a - 1;
        hash[0xb00d] = keccak256(abi.encode(hash));
    }
    function transferMe() public {
        beneficiary.transfer(msg.value);
    }
}
