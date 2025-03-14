pragma solidity ^0.8.0;
contract CallerPay {
  receive () external payable {}
  function callWithEther() external {
    address(this).balance;
  }
}
