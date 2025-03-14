pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  uint _counter;
  function call() public payable returns (address payable) {
    receiver.call{value: address(this).balance}("");
    unchecked {
      _counter++;
    }
  }
}
