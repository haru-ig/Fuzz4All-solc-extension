pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  function modify2(address foo, uint x) public {
    foo.transfer {value: x}(payable(msg.sender));
  }
}
