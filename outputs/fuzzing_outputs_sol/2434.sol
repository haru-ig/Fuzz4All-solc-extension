pragma solidity ^0.8.0;
contract Caller2 {
  address payable receiver2;
  function pay() public payable returns (address payable) {
    receiver2.transfer(address(this).balance);
    return receiver2;
  }
}
