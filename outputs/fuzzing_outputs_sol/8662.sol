pragma solidity ^0.8.0;
contract Caller
{
    address payable beneficiary;
    uint256 amount;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function mutator() payable external {
      beneficiary.transfer(amount);
    }
    function fallback() external payable {
      beneficiary.transfer(msg.value);
    }
}
