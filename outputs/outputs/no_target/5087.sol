pragma solidity ^0.8.0;
contract C42_bug422481729925 {
  uint160 c = uint160(uint8(uint8(b)));
}

pragma solidity ^0.8.0;
contract C43_bug422481729925 {    uint160 c = uint160(uint8(uint8(b))); uint88 d = uint88(uint(uint8(c))); uint160 e; e = uint160(uint8(uint8(c))); }
