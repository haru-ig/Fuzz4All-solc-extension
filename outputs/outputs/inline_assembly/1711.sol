pragma solidity ^0.8.0;
contract MutatorS11 {
uint8 constant SIXTEEN = 16;
uint256 constant SIX = 6;
uint256 constant SIX_PLUS_TWELVE = SIX + SIXTEEN;
uint256 c = SIX;
  function mutate() public {
    c += SIX_PLUS_TWELVE;
}
}
