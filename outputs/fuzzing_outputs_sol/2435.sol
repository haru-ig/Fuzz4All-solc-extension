pragma solidity ^0.8.0;
contract MutatedCaller2 {
  address payable receiver2;
  function pay() public payable returns (address payable) {
    receiver2 = address(this).balance;
    return receiver2;
  }
}
