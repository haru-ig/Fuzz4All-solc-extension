pragma solidity ^0.8.0;
contract ContractWithFallback12Modifier {
  function modify(address foo, uint x) public {
    foo.call{value:  x}_();
  }
}
