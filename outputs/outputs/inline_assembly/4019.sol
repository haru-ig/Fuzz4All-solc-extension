pragma solidity ^0.8.0;
contract SemanticallyEquivalent20y2 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo() public pure {
    assembly { mstore(x, 0) }
  }
}


contract Simple {
  function foo(uint x) internal pure {
    require(!(x == 0), 0x5a);
  }

  function bar(uint x) public pure {
    foo(uint(memory));
    uint32 zero = 0;
    var y;
    uint(y);
    y;
    y = x;
    foo(uint(0), 0x5a);
  }
}

contract A {
  contract B is A {
    address x;
    function f() public pure {
      x;
      require(x == address(1), "bad");
    }
  }
}

contract B {
  function f() public pure {
    B.address x;
    x;
    x = address(0x42);
    x;
  }
}
