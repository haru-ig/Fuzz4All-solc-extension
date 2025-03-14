pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
    return receiver;
  }
}
