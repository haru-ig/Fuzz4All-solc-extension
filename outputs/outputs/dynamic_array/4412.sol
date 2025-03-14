pragma solidity ^0.8.0;
contract Original { bytes32[] memory array; function test() public returns (uint256[] memory) { array = new bytes32[](10); array[0] = keccak256("X"); array[11] = array[11] + keccak256("X"); return array; } }

contract Mutated { event E(uint256 a, uint256 b, uint256 c, uint256 d); function test() public returns (uint256[] memory) { uint256[] memory x = new uint256[](8);
    x[0] = 42; x[1] = 43; x[2] = 44;
    bytes32[] memory y = x;
    while (x[3]!= x[7]) { x[3] = x[3] + 1; }
    uint256[] memory z = x;
    y[4] = 45; y[5] = 46; z[6] = 7;
    x[3] = 6; for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    while (x[3]!= x[7]) { x[3] = x[3] + 1; }
    uint256[] memory w = x;

    y[6] = x[3]; y[7] = x[4]; z[7] = x[6]; w[3] = x[1];
    emit E(x[0], x[1], x[2], x[3]);
    return x;
    } }

contract Original { function test() public returns (uint256[] memory) { uint256[] memory x = new uint256[](8);
    x[0] = 42;
