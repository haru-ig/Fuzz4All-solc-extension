pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
  }
  receive() external payable {
    self.transfer(address(this).balance);
  }
}
