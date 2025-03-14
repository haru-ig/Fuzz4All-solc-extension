pragma solidity ^0.8.0;
contract C70_bug782832220281 {
  function set() public { uint256 a; uint160 b; a = uint256(uint160(uint8(uint8(b))))); uint88 c = uint88(a); c += uint88(b);}
}
contract C78_bug782832220281 {
  function set() public { uint256 a; uint160 b; a = uint256(uint160(uint8(uint8(b))))); uint88 c = uint88(a); c++; c++;}
}
