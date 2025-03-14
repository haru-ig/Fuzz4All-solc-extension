pragma solidity ^0.8.0;
contract Convert {
  function toByte_(uint16 x) pure internal pure returns(uint8 y) {
    y = uint8(x);
  }

  function fromByte_(uint8 x) pure internal pure returns(uint y) {
    y = uint(x);
  }
}
