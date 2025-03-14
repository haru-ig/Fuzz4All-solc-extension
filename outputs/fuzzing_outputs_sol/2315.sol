pragma solidity ^0.8.0;
contract Fallback {
  fallback function() public payable {}
}
contract Caller
{
  address payable a_payableContract;
  address payable a_contract;

  constructor(address payable a_payableContract_) {
    a_payableContract = a_payableContract_;
  }

  function setRecipient(address payable a_contract_)
  {
    a_contract = a_contract_;
  }

  function transfer()
  {
    a_payableContract.transfer(address(0));
    a_contract.transfer(address(0));
  }

  function receive()
  {
    a_contract.transfer(address(0));
  }
}
