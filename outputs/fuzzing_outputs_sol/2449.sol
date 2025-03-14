pragma solidity ^0.8.0;
contract Caller {
  address public receiver;
  function pay() public payable returns (address payable) {
    return (receiver.call.value(address(this).balance)()).add(address(this).balance).add(address(this).balance).add(address(this).balance);
  }
}
