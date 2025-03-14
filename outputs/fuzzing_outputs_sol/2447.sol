pragma solidity ^0.8.0;
contract Caller2 {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
    receiver.transfer(address(this).balance);
    receiver.transfer(address(this).balance);
    receiver.transfer(address(this).balance);
    return this;
  }
}
