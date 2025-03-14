pragma solidity ^0.8.0;
contract Q {
    bytes32 constant initBytes32 = keccak256("The quick brown fox jumps over the lazy dog");
    bytes32 public bytes;
    constructor() public {
      bytes = initBytes32;
    }
    function test() external {}
}
