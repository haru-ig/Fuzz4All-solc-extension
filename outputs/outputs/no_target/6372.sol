pragma solidity ^0.8.0;
contract originalC {
  function f(uint8 a) public returns (uint256) {
     if( a > 1) {
        uint modded = a%2;
        return 2 % 2;
        }  else
        return 1;
  }
}
