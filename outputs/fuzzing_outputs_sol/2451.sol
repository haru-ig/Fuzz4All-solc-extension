pragma solidity ^0.8.0;
contract CallerWithFallback {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(0).balance);
  }
}
