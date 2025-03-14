pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  function foo(uint x, uint y) public pure {
    assembly {
      let zero := 0
      if eq(x, zero) {
        revert(0, subtract(x, y))
      } else {
        revert(0, x)
      }
    }
  }
  function bar(uint x, uint y) public pure {
    assembly {
      let one := 1
      if eq(x, one) {
        revert(0, add(x, y))
      } else {
        revert(0, div(x, y))
      }
    }
  }
}
contract SemanticallyEquivalent22 {
    function foo(uint x, uint y) public pure {
      assembly { revert(0, sub(1, 0))  }
    }
}
