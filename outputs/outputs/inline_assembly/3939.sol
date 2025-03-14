pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, add(x, y)) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent23 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, and(x, y)) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent24 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, sub(x, y)) }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent25 {
  function foo(uint x, uint y) public pure {
    assembly { revert(0, div(x, y)) }
  }
}
