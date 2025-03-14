pragma solidity ^0.8.0;
contract K {
  constructor() public {}
  function f() public pure {
    uint256 i = 0;
    i += 1;
    bytes memory buffer = '';
    buffer += uint8(uint256(i));
  }
}
