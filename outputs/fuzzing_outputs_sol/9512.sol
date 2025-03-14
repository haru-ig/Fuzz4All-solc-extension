pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  function modify(address foo, uint x){
    foo.call{value: x}('');

  }
}
