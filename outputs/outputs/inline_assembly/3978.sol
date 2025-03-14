pragma solidity ^0.8.0;
contract NonSemanticallyEquivalent1024 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { div(x, x) }
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent32528 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { return (mul(x, x)) }
  }
}
pragma solidity ^0.8.0;
contract NonSemanticallyEquivalent32528 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { return (div(x, x)) }
  }
}
pragma solidity ^0.8.0;
contract InvalidInlineAssembly1024 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { mul(x, x) }
  }
}
pragma solidity ^0.8.0;
contract InvalidInlineAssembly32528 {
  uint8 constant x = 1;
  uint8 constant y = 0;
  function foo(uint8 y, uint8 x) public pure {
    assembly { div(x, x) }
  }
}

pragma solidity ^0.8.0;
