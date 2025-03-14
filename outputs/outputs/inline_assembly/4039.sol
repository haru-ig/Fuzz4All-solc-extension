pragma solidity ^0.8.0;
contract SemanticsEquivalence23x {
  uint8 constant x = 1;
  function bar() public pure {
    var foo = mload(x);
    calldatacopy(foo, 1);
    foo;
  }
  function foo() public pure {}
}
contract SemanticsEquivalence22x {
  uint8 constant x = 1;
  function bar() public pure {
    assembly { mstore(x, 0x00) }
    foo;
  }
  function foo() public pure {}
}
contract SemanticsEquivalence21x {
  uint constant c = 0xabcd;
  uint8 constant x = c;
  function bar() public pure {
    assembly {
      mstore(x, c)
      mstore(add(x, 8), 0x00)
      mstore(mul(c, 8), 0x00)
    }
  }
  function foo() public pure {
    x;
  }
}
contract SemanticsEquivalence20x {
  uint constant c = 0xabcd;
  uint8 constant x;
  function bar() public pure {
    assembly {
      mstore(x, c)
      mstore(add(x, 8), 0x00)
      mstore(mul(c, 8), 0x00)
    }
  }
  function foo() public pure {
    x;
  }
}
contract SemanticsEquivalence19x {
  uint constant c = 0xabcd;
  uint8 constant x;
  enum A { a }
  constructor() public { x = A.a; }
  function bar() public pure {
    assembly {
      x := 1
      mstore(add(x, 8), 0x00)
      mstore(c, 0x00)
    }
  }
  function foo() public pure {
    A(x);
  }
}
contract SemanticsEquivalence18x {
  uint constant c = 0xabcd;
  uint8 constant x;
  function bar() public pure {
    assembly {
      mstore(x, c)
      mstore(add(x, 1), 0x00)
    }
  }
  function foo() public pure {
    x;
  }
}
contract SemanticsEquivalence17x {
  uint8 constant x = 1;
  function bar() public pure {
    assembly { mstore(x, 5) }
    x;
