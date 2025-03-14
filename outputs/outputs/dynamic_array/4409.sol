pragma solidity ^0.8.0;
contract Mutated { function test() public returns (uint256[] memory) {
    uint256[] memory x = new uint256[](8);
    x[0] = 42; x[1] = 43; x[2] = 44;
    for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    uint256[] memory y = x;
    while (x[3]!= x[7]) { x[3] = x[3] + 1; }
    for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    return x;
    } }
