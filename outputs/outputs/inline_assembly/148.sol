pragma solidity ^0.8.0;
contract E5E {
  uint8 nonexistent;
  constructor(uint16 num, uint16 num2) {
    assembly { nonexistent := 0 }
  }
}
