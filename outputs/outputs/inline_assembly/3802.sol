pragma solidity ^0.8.0;
contractSemanticallyEquivalent7 {
  constructor () {
    uint 255 = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint) {
    uint _255;
    assembly {
      _255 := constantValue
    }
    return _255;
  }
}
