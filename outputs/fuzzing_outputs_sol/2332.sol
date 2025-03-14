pragma solidity ^0.8.0;
contract PayableFallback {
  modifier payable() {
    require(msg.value > address(this).balance);
    payable fallback();
    return;
  }

  constructor() public payable {}
}
