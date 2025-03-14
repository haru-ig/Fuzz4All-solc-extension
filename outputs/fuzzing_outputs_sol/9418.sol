pragma solidity ^0.8.0;
contract MutatingFallback10 {
  uint16 x;
  function a() public {}
  modifier b() {
    x = 300;
    _;
  }
  constructor() {
    x = 300;
  }
  function createInstance() public b {
    x = 0;
    assert(x == 0);
  }
}
contract MutatingFallback11 {
  address a;
  mapping (address => uint16) b;
  modifier c() {
    a = payable(msg.sender);
    b[a] = 300;
    _;
  }
  constructor() {
    a.transfer(500);
    b[a] = 0;
    assert(b[a] == 300);
  }
  function mutate() public c {
    b[a]++;
    b[a] = 0;
    assert(b[a] == 400);
  }
}
contract MutatingFallback12 {
  uint16 x;
  constructor() {
    x = 300;
  }
  function mutate() public {
    x++;
    x = 0;
    assert(x == 301);
  }
}
