pragma solidity ^0.8.0;
contract SemanticFallback {
  payable address payable_fallback;
  modifier fallback() {
    require(msg.value > 0, "Fallback: non-zero amount expected");
    address payable _addr = payable_fallback;
    _;
    _addr.transfer(address(this).balance);
  }
}
