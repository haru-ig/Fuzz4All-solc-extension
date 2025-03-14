pragma solidity ^0.8.0;
contract Mutated3 {
    uint x = 0;
    bytes[2][100] z = new bytes[2][100];
    function test() public pure {
      revert();
    }
}
