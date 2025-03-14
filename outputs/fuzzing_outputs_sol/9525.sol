pragma solidity ^0.8.0;
contract ContractWithFallback24 {
  function callPayableFallback(address addr, uint x) public payable {
    emit Emitted(x);
    addr.call{value: x}('');
  }
  event Emitted(address addr, uint x);
}
