pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  function foo2(uint x, uint y, uint z) public pure {
    assembly { revert(0, or(x, y, z)) }
  }
}

pragma solidity ^0.8.0;
contract Semantics1920 {
  function foo() public pure {
    SemanticallyEquivalent19 s19;
    SemanticallyEquivalent20 s20;
    assembly { s19.foo(1, x) }
    assembly { s20.foo2(2, z, y) }
  }
}
interface I { uint foo }
contract A {
  I i;
  constructor(uint _i) private {
    i = I(_i);
  }
  function g() public constant returns (uint x) {
    x = i.foo;
  }
}
contract B {
  I i;
  constructor(uint _i) private {
    i = I(_i);
  }
  function g() public returns (uint x) {
    x = i.foo;
  }
}
contract C {
  constructor(uint _i) private {
    i = I(_i);
  }
  function g() public returns (uint x) {
    x = i.foo;
  }
}
contract D is A, B {
  uint x;
  constructor(uint _i) public {
    i = I(_i);
  }
  function f() public returns (uint z) {
    z = i.foo;
  }
  function g() public constant returns (uint z) {
    x = z;
  }
}
contract F {
  constructor(uint _i) public {
    i = I(_i);
  }
  function f() public constant returns (uint z) {
    z = i.foo;
  }
  function g() public pure returns (uint z) {
    x = z;
  }
}
contract Main {
  function f() public pure returns (uint z) {
    x = z;
  }
  function g() public constant returns (uint z) {
    z = f;
  }
}
contract Test1920 {
  function test() public {
    Semantics1920 myContract = new Semantics1920();
    (uint x, uint y, uint z) = myContract.g();
    assert(x == 2);
    assert
