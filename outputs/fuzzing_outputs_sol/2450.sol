pragma solidity ^0.8.0;
contract MutateCaller {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance).
        payable;
  }
}
