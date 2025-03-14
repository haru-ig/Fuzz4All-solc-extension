pragma solidity ^0.8.0;
contract TestMutator8 {
    uint x;
    constructor () public {
      x = 0xdeaadcdcd0;
    }
    function set() external {
      uint memory _x = x;
      x = 0xadcda;
      x = 242811;
      x = 0x490;
    }
}
