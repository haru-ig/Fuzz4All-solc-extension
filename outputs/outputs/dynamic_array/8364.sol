pragma solidity ^0.8.0;
contract Solidity8To14b {

    uint8 public immutable a;

    uint8[6] public b;

    uint8[6] public c;
    function a(uint index) public pure returns (uint8 v) { v = b[index]; }
    function b(uint index) public pure returns (uint8 v) { v = c[index]; }
}
