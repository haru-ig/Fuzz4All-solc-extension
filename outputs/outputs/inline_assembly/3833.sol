pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant constantValue = 1000;
  constructor () {
    uint10 _h;
    uint64 _h1;
    uint32 _h2;
    address _h3;
    assembly {
      _h := constantValue
    }
    assembly { _h1 := constantValue }
    assembly { _h2 := constantValue }
    assembly { _h3 := constantValue }
    uint10 _c;
    uint64 _c1;
    uint32 _c2;
    address _c3;
    assembly {
      _c := constantValue
    }
    assembly { _c1 := constantValue }
    assembly { _c2 := constantValue }
    assembly { _c3 := constantValue }
    _c = constantValue;
  }
  function z() pure public {
    uint10 _h;
    uint64 _h1;
    uint32 _h2;
    address _h3;
    assembly {
      _h := constantValue
    }
    assembly { _h1 := constantValue }
    assembly { _h2 := constantValue }
    assembly { _h3 := constantValue }
    uint10 _c;
    uint64 _c1;
    uint32 _c2;
    address _c3;
    assembly {
      _c := constantValue
    }
    assembly { _c1 := constantValue }
    assembly { _c2 := constantValue }
    assembly { _c3 := constantValue }
    _c = constantValue;
  }
  function x() pure public returns (uint10, uint64, uint32, address) {
    uint10 _h;
    uint64 _h1;
    uint32 _h2;
    address _h3;
    assembly {
      _h := constantValue
    }
    assembly { _h1 := constantValue }
    assembly { _h2 := constantValue }
    assembly { _h3 := constantValue }
    uint10 _c;
    uint64 _c1;
    uint32 _c2;
    address _c3;
    assembly {
      _c := constantValue
    }
    assembly { _c1 := constantValue }
    assembly { _c2 := constantValue }
    assembly { _c3 := constantValue }
    _c = constantValue;
    return (uint10(_c), uint64(_c1), uint
