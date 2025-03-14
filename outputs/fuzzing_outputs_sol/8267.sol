pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  uint public x;
  function f() public {
    uint a;
    uint c;
    (a, c) = (42, 42);
    x = c / c;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  uint public x;
  uint public y;
  uint public z;
  uint public result;
  function f() public {
    uint a;
    uint c;
    a = z;
    c = a;
    z = c + c;
  }
}
contract SemanticSimilar16_reentrancyAttack {

  uint public x;
  uint public result;
  uint counter;
  modifier modifier_nonFinal {
    counter++;
    if (counter!= 1)
    counter = 1;
    else
    _;
  }
  function f() public modifier modifier_nonFinal {
    x = 3;
    return modifier(x);
  }
  function g() public {
    require(x == 3, "g - wrong result");
    x = 4;
    result = 0;
    result = x + 1;
  }
}
contract SemanticSimilar16_noFallback {
  uint public x;
  uint public result;
  uint counter;
  modifier modifier_nonFinal {
    counter++;
    if (counter!= 1)
    counter = 1;
    else
    _;
  }
  function f() public modifier modifier_nonFinal {
    x = 3;
    return;
  }
  function g() public {
    require(x == 3, "g - wrong result");
    x = 4;
    result = 0;
    result = x + 1;
  }
}
