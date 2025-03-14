pragma solidity ^0.8.0;
contract F {
  function h() public pure returns (uint8) {
    bytes memory n = hex'00';
    return n[0];
  }
}
