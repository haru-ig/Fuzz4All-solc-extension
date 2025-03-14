pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  function pay() public payable only returns (address payable) {
    receiver.transfer(address(this).balance);
    return receiver;
  }
}

contract ContractCaller {
  address payable receiver;
  function payer() public view returns (address payable) {
    receiver.transfer(address(this).balance);
    return receiver;
  }
  function receiver() public view returns (address) {
    return receiver;
  }
}
