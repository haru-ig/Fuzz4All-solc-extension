pragma solidity ^0.8.0;
contract Caller {
  function func(uint8 param, uint8[3] memory args) public {
    uint8 x = func(2, [1, 2, 3]);
  }
}
