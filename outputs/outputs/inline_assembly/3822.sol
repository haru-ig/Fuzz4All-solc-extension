pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant public constantValue = 1000;
  constructor () {
     uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
    return uint(c);
  }
}
contract SemanticallyEquivalent55 {
  uint constant public constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint c;
    assembly { c := constantValue }
    c = 2000;
  }
  function f() pure public {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
  }
}
contract SemanticallyEquivalent58 {
  uint constant public constantValue = 1000;

  uint constant public x = 4294967295;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint c;
    assembly { c := constantValue }
    c = 2000;
  }
  function f() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    uint256 c;
    assembly { c := constantValue }
    c = 2000;
    return uint(c);
  }
}
