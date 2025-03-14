pragma solidity ^0.8.0;
interface EtherReceiver {
  function receiveEther (uint) external payable;
}
contract MutatedEtherReceiver is EtherReceiver {
  function receiveEther (uint x) external payable {
    address payable selfAddress = payable(self);
    selfAddress.transfer(x);
  }
}
