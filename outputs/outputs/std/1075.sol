pragma solidity ^0.8.0;
contract ArrayMut {
  function array() public pure {
    uint8[2] memory b;
    b[1] = 1;
    b[0] = 1;
    b[3] = 0;
    b[2] = 2;
  }
}
