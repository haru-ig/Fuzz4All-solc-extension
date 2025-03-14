pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  function modify(address foo, uint x) public payable {}
}

contract Caller {
  fallback (address foo, uint x) payable external {

  }
}
