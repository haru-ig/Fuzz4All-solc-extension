pragma solidity ^0.8.0;
contract MutatedFallback {
  event ReceivedEther(address contractOwner);
  event ReceivedEtherWithoutFallback(address contractOwner);
  event ReceivedEtherWithoutFallbackAndWithoutReceive(address contractOwner);
  function () public payable {
  }

  fallback() public payable;
  receive() public;
  receiveWithoutFallback() public;
  receiveWithoutFallbackAndWithoutReceive() public;
}
