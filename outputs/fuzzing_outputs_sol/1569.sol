pragma solidity ^0.8.0;
contract MyContract {
  receive() external {}
}

contract Caller {
  function call() public payable returns (uint) {
    uint sentEther;
    (, sentEther) = call.value(address(this).balance)("");
    return sentEther;
  }
}
