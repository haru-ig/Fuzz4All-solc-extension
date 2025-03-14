pragma solidity ^0.8.0;
contract Caller2 {
  address receiver;
  function() external payable {
    emit EtherSent();
    receiver.transfer(address(this).balance);
  }
}
