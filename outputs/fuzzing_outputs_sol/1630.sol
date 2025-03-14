pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}
  function transfer(address to, uint256 value) public virtual {

  }
}
contract A {
  uint128 a;
  constructor() {

  }
}
contract ContractWithFallback {
  A a;
  uint x;
  constructor() {
    a.receive() external payable { a.a = x; }
  }
  fallback() external payable {
    a.a += 1;
  }
}<jupyter_output>
