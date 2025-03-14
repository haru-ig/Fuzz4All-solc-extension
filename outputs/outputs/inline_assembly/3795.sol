pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  byte constant constantValue = 6;
  function x() pure public returns (byte) {
    byte _h = byte(
      (
        constantValue
      )
    );
    return _h;
  }
}
