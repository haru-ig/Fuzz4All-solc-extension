pragma solidity ^0.8.0;
contract A {
  function foo() public pure {
    assert(true);
  }
}
contract B {
  function bar() public {
    uint x;
    uint y;
    assert(x);
    assert(y);
  }
}
contract C {
  function bar() public pure {
    uint x;
    uint y;
    assert(x);
    assert(y);
  }
}
