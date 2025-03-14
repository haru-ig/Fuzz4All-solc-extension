pragma solidity ^0.8.0;
contract ContractWithFallback {
  function modify(address addr, uint x) public payable {
    emit Emitted(addr, x);
    addr.call{value: x}('');
  }
  event Emitted(address addr, uint x);
}
