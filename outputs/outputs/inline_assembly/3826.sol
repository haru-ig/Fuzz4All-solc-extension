pragma solidity ^0.8.0;
contract SemanticallyEquivalent12 {
  uint constant constantValue = 1000;
  constructor () {
    uint _c;
    assembly { _c := constantValue }
    uint _h;
    assembly { _h := constantValue }
    uint _c2;
    assembly { _c2 := constantValue }
    _c2 = 2000;
  }
}
