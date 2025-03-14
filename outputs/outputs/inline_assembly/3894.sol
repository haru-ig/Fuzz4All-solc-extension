pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function foo() public pure {
    assembly { revert(0, 10) }
  }
  function bar() public pure {
    assembly { revert(0, 2 * 10) }
  }
}
contract SemanticallyEquivalent20 {
  function foo() public pure {
    assembly { revert(0, mul(10, 5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
contract SemanticallyEquivalent21 {
  function foo() public pure {
    assembly { revert(0, div(10, 5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
contract SemanticallyEquivalent22 {
  function foo() public pure {
    assembly { revert(0, sub(10, 5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
contract SemanticallyEquivalent23 {
  function foo() public pure {
    assembly { revert(0, xor(10, 5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
contract SemanticallyEquivalent24 {
  function foo() public pure {
    assembly { revert(0, and(10, 5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
contract SemanticallyEquivalent25 {
  function foo() public pure {
    assembly { revert(0, not(5)) }
  }
  function bar() public pure {
    assembly { revert(0, 0) }
  }
}
