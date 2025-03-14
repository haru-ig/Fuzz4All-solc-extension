pragma solidity ^0.8.0;
contract MutatedArithmetic {
  uint8 constant X = 100;
  function mod(uint8 y) public pure returns (uint8) {
    require(y > 0);
    return uint8(uint256(y) % X);
  }
}

address contractAddr = 0x5f7191F2a524F288220020CaC61dAf8c15b044c5;
