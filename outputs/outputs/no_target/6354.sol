pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public {
    uint8 b = f(1907121597);
    require(b < 252);
  }
}
