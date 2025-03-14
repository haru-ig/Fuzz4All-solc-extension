pragma solidity ^0.8.0;
contract Caller {
  function call() public {
    mutatedCall();
    (uint) (address(this).balance);
    (uint) (address(this).balance);
  }
  function mutatedCall() public payable {
    (uint) (address(this).balance);
  }
}
