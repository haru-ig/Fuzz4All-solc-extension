pragma solidity ^0.8.0;
contract Array {
  mapping(uint8 => uint8) public m;
}
contract Memory {
  uint8 n;
}
contract Multiprecision {
  uint256 m;
}
contract Random {
  function getRandom(uint256 i) returns (uint256);
  function getArray(uint8[] storage v) returns (uint8[] memory x);
}
contract Math {
  function add(uint256 y, uint256 z) public pure returns (uint256) {
    return y + z;
  }
}
