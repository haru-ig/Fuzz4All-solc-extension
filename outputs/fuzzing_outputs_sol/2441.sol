pragma solidity ^0.8.0;
contract Caller2 {
  address payable receiver;
  function () external payable {

    receiver.transfer(address(this).balance);
  }
}
