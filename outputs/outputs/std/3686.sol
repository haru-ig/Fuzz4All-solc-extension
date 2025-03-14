pragma solidity ^0.8.0;
contract Array128 {
    function sum32_256(uint128 a, uint32 b) public pure returns (uint) {


      return max(a, b) - min(a, b) + 1;
    }
    function min32_256(uint128 a, uint32 b) public pure returns (uint) {
      return uint(min(a, b));
    }
    function max32_256(uint128 a, uint32 b) public pure returns (uint) {
      return uint(max(a, b));
    }
    function from32_256(uint a) public pure returns (uint128) {
      return uint128(a);
    }
    function to32_256(uint128 b) public pure returns (uint32) {
      return uint32(b);
    }
    function length32() public pure returns (uint) {
        return uint(32);
    }
    function length128() public pure returns (uint) {
        return uint(128);
    }
}
