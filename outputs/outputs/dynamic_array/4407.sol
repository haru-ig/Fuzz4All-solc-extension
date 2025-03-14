pragma solidity ^0.8.0;
contract Mutated { function test() public returns (
    uint8[] memory x,
    uint256[3] memory y,
    uint256 x0,
    uint256 x1,
    uint256 y0,
    uint256 y1 ) {
    x = new uint8[](8);
    y = new uint256[](3);
    x[0] = 42; x[1] = 43; x[2] = 44;
    (y0, y1)  = (30, 31);
    y[0] = y[0] + y[1];
    } }
