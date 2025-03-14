pragma solidity ^0.8.0;
contract MutatedCaller {
  function mutated() public payable {
    (uint) (address(this).balance);
  }
}
