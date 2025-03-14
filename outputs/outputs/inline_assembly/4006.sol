pragma solidity ^0.8.0;
library Foo {
pragma solidity >=0.8.0;
function foo(uint8 a) public pure returns(uint8 b) {
  return a;
}
}
contract SemanticallyEquivalent5v3x {
  uint8 constant x_5v3 = 1;
  uint8 constant y_5v3 = 0;
  function foo() public pure {
    foo.foo(x_5v3)
      foo.foo(y_5v3)
  }

  function _foo(uint8 _y) public pure returns(uint8 _z) {
    assembly {
      mstore(_z, mload(x_5v3))
    }
    _z = _y;
  }
}
