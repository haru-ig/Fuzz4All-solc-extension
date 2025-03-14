pragma solidity ^0.8.0;
contract CallerWithoutFallback {
  address payable receiver;
  receive() public payable {
    receiver.transfer(address(0).balance);
  }
}
