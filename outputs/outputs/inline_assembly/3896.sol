pragma solidity ^0.8.0;
contract SemanticallyEquivalent42 {
  function foo() public pure {
    for (uint i := 0 until 3) {
      memory.x = 5;
      memory.y = i;
    }
    emit Log(msg.sender, memory.x, memory.y);
  }
}
contract SemanticallyEquivalent43 is SemanticallyEquivalent42 {
  uint x;
  uint public y;
  constructor(uint _x) public {
    x = _x;
    y = x;
  }
}

contract Revert
{
  function revert() public pure {
    assembly { revert(0, 0) }
  }
}
contract Contract19
{
  constructor(uint _x) public {
    x = _x;
    x = x + 658;
  }
}
contract Modifier19
{
  uint public x;
  constructor(uint _x) public {
    x = _x;
  }
  function modifier1() public pure {
    x = x + 2;
    _;
  }
  function modifier2() public pure {
    x = x + x;
    _;
  }
}

contract Modifier20 is Modifier19 {}
contract Contract20
{
  uint public x;
  constructor(uint _x) public {
    x = _x;
  }
  function modifier3() public pure {
    x = x + 3;
    _;
  }
  function modifier4() public pure {
    x = x + x;
    _;
  }
}
contract Modifier21 {
    uint public x;
    constructor(uint _x) public {
      x = _x;
    }
    function modifier5() public pure {
      x = x + 5;
      _;
    }
    function modifier6() public pure {
        x = x + x;
        _;
    }
}

contract Modifier22 {
  uint public y;
  modifier1 public {
    x = 5;
    y = x;
  }
}

contract Modifier23 {
  uint public z;
  modifier2 public {
    x = x + x;
    y = x + y;
    z = x + y + x + x;
  }
}

contract Modifier24 {
  uint public w;
  modifier3 public {
    x = x + 3;
  }
}

contract Modifier25 {
  uint public v;
  modifier4 public {
    y = y + y;
    z = z + z;
    w = w + w;
    v = v + v;
  }
}

contract Modifier26 {
  uint public u;
  modifier5 public {
    u = u + u;
  }
