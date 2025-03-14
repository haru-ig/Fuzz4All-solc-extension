pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  function modify(address foo, uint x) receive {
    foo.call{value: x}('');
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback17 {
  fallback() external payable;
}
