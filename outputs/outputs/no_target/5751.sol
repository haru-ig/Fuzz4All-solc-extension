pragma solidity ^0.8.0;
contract Foo {
    function g() internal returns (uint256, uint8, uint16, uint32, uint64) {
        (uint256 x, uint256 y) = (10, 7);
        (uint8 z, uint16 w, uint32 v, uint64 u) = (255, 32, 64, 128);
    }
}
