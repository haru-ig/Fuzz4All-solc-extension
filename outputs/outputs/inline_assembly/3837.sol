pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalent12 {
    uint constant constantValue = 1000;
    constructor (uint myVar) {
        uint _h;
        assembly {
            _h := myVar
        }
        uint _c;
        assembly { _c := myVar }
        _c = constantValue;
    }
    function x() pure public returns (uint) {
      uint _h;
      assembly { _h := constantValue }
      uint _c;
      assembly { _c := constantValue }
      _c;
      return uint(_c);
    }
    function y() pure public returns (uint) {
      uint _h;
      assembly { _h := constantValue }
      uint _c;
      assembly { _c := constantValue }
      _c = constantValue;
    }
}
