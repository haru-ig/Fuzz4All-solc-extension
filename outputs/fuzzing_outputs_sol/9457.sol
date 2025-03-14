pragma solidity ^0.8.0;
contract ContractWithFallback8 {
  function modify(uint x, uint y) public {
    modify2(x, y);
    modify4();
    modify6();
    modify8();
  }

  function modify2(uint x, uint y) public {
    modifier (modifierTest) {
      if (modifierTest == true)
        x++;
      else
        x--;
      if (x == 50) revert();
      else
        y--;
      if (y == 50) revert();
    }

    modify(x, y);
  }

  function modify4() public {
    modifier (modifierTest) {
      if (modifierTest == true)
        throw;
      modifierTest = false;
      x++;
      if (x == 50) revert();
      else
        y--;
      if (y == 50) revert();
    }

    modify(x, y);
  }

  function modify6() public {
    modifier (modifierTest) {
      if (modifierTest == true)
        throw;
      modifierTest = false;
      x++;
      if (x == 50) revert();
      else
        y--;
      if (y == 50) revert();
    }

    modify(x, y);
  }

  function modify8() public {
    modify(x, x);
  }

    function modify(uint x, uint y) public {
    x += y;
    if (x == 50) revert();
    else
      y -= x / 50;
    if (y == 50) revert();
  }
}

pragma solidity ^0.8.0;
contract DoesNotContainFallback {
  uint a = 50;

    function modify(uint x, uint y) public {
    x += y;
    if (x == 50) revert();
    else
      y -= x / 50;
    if (y == 50) revert();
  }
}

pragma solidity ^0.8.0;
contract DoesNotContainFallback2 {
  uint a;

    function modify(uint x, uint y) public {
    x += y;
    if (x == 50) revert();
    else
      y -= x / 50;
    if (y == 50) revert();
  }
}
