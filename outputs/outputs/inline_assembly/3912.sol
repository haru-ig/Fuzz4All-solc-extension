pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := add(x, y)
    }
  }
}
contract SemanticallyEquivalent22 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := sub(x, y)
    }
  }
}
contract SemanticallyEquivalent23 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := and(x, y)
    }
  }
}
contract SemanticallyEquivalent24 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := div(x, y)
    }
  }
}
contract NotSemanticallyEquivalent25 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := mod(x, y)
    }
  }
}
contract NotSemanticallyEquivalent26 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := xor(x, y)
    }
  }
}
contract NotSemanticallyEquivalent27 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := not(x)
    }
  }
}
contract NotSemanticallyEquivalent28 {
  uint public value;
  function foo(uint x, uint y) public pure {
    assembly {
      value := xor(x, 0xFFFF1111)
    }
  }
}
