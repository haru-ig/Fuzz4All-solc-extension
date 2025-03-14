pragma solidity ^0.8.0;
contract SemanticallyEquivalent26 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", mod(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent27 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", add(x, sub(and(y, 11), land(x, y)) )) }
  }
}
contract SemanticallyEquivalent28 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", add(x, sub(and(y, 11), xor(x, y)))) }
  }
}
contract SemanticallyEquivalent29 {
  function foo(uint256 x, uint8 y) public pure {
    assembly { revert("bar", add(x, mul(and(y, 8), y)))) }
  }
}
contract SemanticallyEquivalent30 {
  function foo(uint256 x, uint72 y) public pure {
    assembly { revert("bar", add(x, mul(and(y, 11), sub(x, y)) ))) }
  }
}
contract SemanticallyEquivalent31 {
  function foo(uint256 x, uint32 y) public pure {
    assembly { revert("bar", add(x, mul(and(y, 11), div(x, y))))) }
  }
}
contract SemanticallyEquivalent32 {
  function bar(uint8 x) public pure {
    bool b = and(add(x, 123), x > 456);
    assembly { emit(b) }
    revert("bar", b);
  }
}
contract SemanticallyEquivalent33 {
  function bar(uint256 y) public pure {
    bool b = and(y, x > 456);
    assembly { emit(b) }
    revert("bar", b);
  }
}
