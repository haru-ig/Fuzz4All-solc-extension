pragma solidity ^0.8.0;
contract M {
  bytes3 public text;
  fallback() external {
    text = bytes3(counter);
    unchecked {
      text = bytes3(counter) - bytes3(1);
    }
    text = bytes3(counter) + bytes3(1);
  }
}
contract Call {
  constructor() { }
  function f() public;
}
contract Revert {
  constructor() { }
  function f() public;
}
contract M {
  event log(bytes3 text, uint i);
  M m;
  Call c1;
  Revert r1;
  Call c2;
  Revert r2;
  fallback() external {
    log(text+bytes3(i), 1);
  }
}
contract M2 {
  uint public i;
  uint public c;
  uint public r;
  fallback() external {
    i = r - c;
    c = c + (1 - i);
    r = c + i;
    i = 0;
  }
}
