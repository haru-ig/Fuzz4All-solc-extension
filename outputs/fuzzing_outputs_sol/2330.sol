pragma solidity ^0.8.0;
contract MutatedFallback {
  function start(address addr, contract PayableFallback impl) public payable {
    impl.receive.value(100000000*(address(this).balance)/impl.sendValue)();
  }
}
