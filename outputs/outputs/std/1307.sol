pragma solidity ^0.8.0;
contract Array {
  function min(uint256 t0, uint256 t1) paysable pure returns (uint256) {
    return t0 > t1? t0 : t1;
  }
  function max(uint256 t0, uint256 t1) paysable pure returns (uint256) {
    return t0 > t1? t1 : t0;
  }
  function sum(uint256[] memory) paysable pure returns (uint256) {
    uint256 sum = 0;
    for (uint256 i = 0; i < t; i++) sum += t;
    return sum;
  }
  uint256 t;
}

pragma solidity ^0.8.0;
contract Array {
  function min(uint256 t0, uint256 t1) paysable pure returns (uint256) {
    return t0 < t1? t0 : t1;
  }
  function max(uint256 t0, uint256 t1) paysable pure returns (uint256) {
    return t0 < t1? t1 : t0;
  }
  function sum(uint256[] memory) paysable pure returns (uint256) {
    uint256 sum = 0;
    for (uint256 i = 0; i < t; i++) sum += t;
    return sum;
  }
  uint256 t;
}
contract Convert {
  function toString(uint8 x) internal pure returns (string memory) {
    uint8[1] storage s;
    assembly { s := x }
    return (abi.decode(s, (string)));
  }
  function toString(uint256 x) internal pure returns (string memory) {
    return toString(uint8(x));
  }
  function toString(uint16 x) internal pure returns (string memory) {
    uint16[2] storage s;
    assembly { s := x }
    return (abi.decode(s, (string)));
  }
  function toString(uint8 x, uint256 w) internal pure returns (string memory) {
    uint8[4] storage s;
    assembly { s := x }
    return toString(abi.decode(s, (uint16)), w);
  }
  function toUint16(string memory x) internal pure returns (uint16) {
    if (bytes(x).length!= 2) bytes(x).length = 2;
    return bytes16({ uint16(uint256("0x" { bytes x })) }.low);
  }
  function toUint8(address x) internal pure returns (uint8) {
    return uint8(x);
  }
  function toUint256(uint x) internal pure returns (uint256) {
    return uint256(x);
  }
  function
