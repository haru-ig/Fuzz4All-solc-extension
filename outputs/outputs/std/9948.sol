pragma solidity ^0.8.0;
contract Mutations {
    function add(uint a, uint b) internal pure returns (uint) {
      return a + b;
    }
    function sub(uint a, uint b) internal pure returns (uint) {
      require(b <= a);
      return a - b;
    }
    function div(uint a, uint b) internal pure returns (uint) {
      return a / b;
    }
    function mod(uint a, uint b) internal pure returns (uint) {
      return a % b;
    }
    function mul(uint a, uint b) internal pure returns (uint) {
      return a * b;
    }
    function shl(uint a, uint b) internal pure returns (uint) {
      return (a << b) | (a >> (8 * (32 - b)));
    }
}
