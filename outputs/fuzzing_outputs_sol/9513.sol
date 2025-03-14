pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  function modify(address addr, uint x) public {
    emit Emitted(addr, x);
    addr.call{value: x}('');
  }
  event Emitted(address addr, uint x);
}
