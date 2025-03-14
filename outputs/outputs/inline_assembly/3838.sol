pragma solidity ^0.8.0;
contract SemanticsMutated12 {
  uint constant constantValue = 1000;
  constructor () {
    uint constant lastValue = constantValue;
    uint _h;
    assembly {
      _h := lastValue
    }
    uint _c;
    assembly { _c := lastValue }
    _c = constantValue;
  }
  function x() pure public returns (uint) {
    uint constant lastValue = constantValue;
    uint _h;
    assembly { _h := lastValue }
    uint _c;
    assembly { _c := lastValue }
    _c = constantValue;
    return uint(_h);
  }
}

contract DifferenceInProgram {
  uint constant constantValue = 1000;
  constructor() {

    uint mutableLastValue = constantValue;
    uint _h;
    assembly { _h := mutableLastValue }
    uint _c;
    assembly { _c := mutableLastValue }
    _c = constantValue;

    uint _h1;
    assembly { _h1 := constantValue }
    uint _c1;
    assembly { _c1 := constantValue }
    _c1 = constantValue;

    if (_c1 <  _h1) {

    } else if (_h1 <  _h) {

    } else {

    }
  }
}
