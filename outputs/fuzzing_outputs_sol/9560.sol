pragma solidity ^0.8.0;
contract CallerWithFallback {
  function doSomething(uint amount_, uint8[16] memory number__)
    public
    fallback(uint amount_, uint8[16] memory nones_)
    payable {
    (uint) (this.balance);
  }
}
contract EtherSender {
  constructor() {
    require (msg.value == address(this).balance, "Invalid amount.");
  }
}
