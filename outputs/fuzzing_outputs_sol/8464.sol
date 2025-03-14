pragma solidity ^0.8.0;
contract CallerExample2 {
  uint8 public value;
  uint8 v;
  constructor () payable {
    v = 1;
    value = 1;
  }
  function pay(uint v_) public returns(uint) {
    v = v_;
    unchecked {
      revert();
    }
  }
}
