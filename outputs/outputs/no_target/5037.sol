pragma solidity ^0.8.0;
contract C327_bug970812018604{
   uint88 a = -2 ** 56;
   function get() external view returns (uint88 b) { return a; }
   function set() public { a = -2 ** 125; }
   function set_(uint88 b) public { a = b; }
}
