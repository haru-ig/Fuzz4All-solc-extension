pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  receive() public payable {}
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
    return receiver;
  }
}
