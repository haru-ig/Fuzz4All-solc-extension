pragma solidity ^0.8.0;
contract Mutant
{
  modifier with_value {
    uint256 a;
    uint256 b;
    assembly {a := 100; b := 200 }
    value(a, b);
    _;
  }

  function value(uint256 a, uint256 b) public {
    require(a + b == 300);
  }
}
contract Mutant
{
  modifier with_value_in_asm {
    uint256 a;
    uint256 b;
    assembly {a := 100; b := 200 }
    value(a, b);
    _;
  }

  function value(uint256 a, uint256 b) public {
    uint256 c = a + b;
    require(c == 300);
  }
}
