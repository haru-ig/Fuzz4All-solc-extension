pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  uint x;
  uint y;
  function foo(uint x_, uint y_) public {
    x = x_;
    y = y_;
  }
  function bar(uint z) public {
    x = sub(x, z);
  }

  function qux() public {
    bar(y);
  }
  function quxx() public {
    revert();
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  uint x;
  uint y;
  function bar(uint z) public {
    x = sub(x, z);
  }
  function qux() public {
    bar(y);
    revert();
  }
}
