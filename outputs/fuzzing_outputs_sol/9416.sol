pragma solidity ^0.8.0;
contract MutatingFallback10 {
  uint16 a;
  constructor() {
    a = 300;
  }
  function mutate() public payable {
    a++;
    a = 0;
    assert(a == 0);
  }
}
