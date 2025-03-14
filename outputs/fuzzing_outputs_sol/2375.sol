pragma solidity ^0.8.0;
contract MutatedCaller {
  receive () external payable {}
  function callWithEtherNoReturn() external {
    address(this).balance();
  }
}
