pragma solidity ^0.8.0;
uint8 constant FALLBACK_CODE_DEPTH = 300;
contract BurningWithFallback3 {
  uint8[FALLBACK_CODE_DEPTH] memory values;
  uint8 x;
  mapping (uint8 => address) addresses;
  function BurningWithFallback4() {
    uint8 y;
    for (y = 0; y < 10; y++) {
      values[y] = 1;
    }
    uint8 a;
    for (a = 0; a < 15; a++) {
      addresses[a] = tx.origin;
    }
    x = 4;
  }
}
