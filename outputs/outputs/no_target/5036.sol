pragma solidity ^0.8.0;
contract C38_bug404933976319 {
   uint168 a = -2 ** 40;
   function get() external view returns (uint168 b) { return a; }
   function set() public { a = -(uint168(-2 ** 56)); }
}
