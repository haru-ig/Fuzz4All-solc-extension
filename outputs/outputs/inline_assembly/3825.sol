pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
  }
  uint[2] x();
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
    return uint(_c);
  }
}
contract SemanticallyEquivalent13 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
  }
  uint x;
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
    return uint(_c);
  }
}
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
  }
  uint[2] x;
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    assembly { _c := constantValue }
    _c = 2000;
    return uint(_c);
  }
}
