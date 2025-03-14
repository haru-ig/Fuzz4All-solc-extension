pragma solidity ^0.8.0;
contract SemanticallyEquivalent3Optimized {
  function h() view internal returns (int) {
    uint256 _h = 1500;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    _count = 100;
    if (i == 1) {
      prevYul = prevYul;
      for (_count = 0; _count < 100; _count++) {
          _h += 500;
      }
    }
    return int(_h);
  }
}

contract SemanticallyEquivalent2Mutated {
  function h() public returns (int) {
    return 1;
  }
}

contract SemanticallyEquivalent2Optimized {
  function h() public returns (int) {
    return 1;
  }
}
contract SemanticallyEquivalent1Optimized {
  function h() public returns (int) {
    return 1;
  }
}
contract SemanticallyEquivalent1Mutated {
  function h() public returns (int) {
    return 1;
  }
}
