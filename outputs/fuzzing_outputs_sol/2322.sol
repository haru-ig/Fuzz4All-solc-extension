pragma solidity ^0.8.0;
contract PayableFallback {
  event Changed();
  uint public immutable counter;
  modifier changeCounter {
    counter += 1;
    _;
  }
  function payableFallback() public payable {
    emit Changed();
  }
}
