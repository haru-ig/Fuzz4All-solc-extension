pragma solidity ^0.8.0;
contract C42_bug435562650674 {
  uint16 x = 0x1;
  uint168 y = uint160(x);
}
