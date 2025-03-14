pragma solidity ^0.8.0;
contract SemanticallyEquivalent28 {
  function foo() public pure {
    while (true) {
      revert(0, 0)
    }
  }
  function bar() public pure {
    while (true) {
      revert(0, 42)
    }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent29 {
  function foo() public pure {
    assembly { return(0, 0) }
  }
  function bar() public pure {
    assembly { return(0, 42) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent39 {
  function foo1() public pure {
    uint a;
    assembly { a := return(a, 42) }
  }

  function bar1() public pure {
    uint x = 42;
    uint y;
    assembly { y := return(x, 42) }
  }

  function foo2() public pure {
    uint x = 42;
    uint y;
    assembly { y := return(x, 42) }
  }

  function bar2() public pure {
    uint x;
    for (uint i=0; i<2; i++) {
      x = 42;
      y = return(x, i);
    }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent42 {
  function inner() public pure {
    uint x = 42;
    uint a;
    assembly { a := return(x, 42) }
  }
  function outer() public pure {
    uint x = 42;
    uint b;
    assembly { b := inner(x, 42) }
  }
}
