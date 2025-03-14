pragma solidity ^0.8.0;
contract Mutated { function test1() public returns (uint256[] memory) {
    uint256[] memory x = new uint256[](8);
    x[0] = 42; x[1] = 43; x[2] = 44;
    x[3] = x[3] + 1; x[4] = x[4] + x[3]; x[3] = x[3] + 1; x[4] = x[4] + x[3];
    uint256[] memory y = x;
    while (x[5]!= x[7]) { x[5] = x[5] + 1; }
    uint256[] memory z = x;
    for (uint256 i=0; i < 6; i++) { x[i] = y[i] + y[i+1]; }
    for (i=0; i < 8; i++) { x[i] = y[i] + y[i+1];
    for (j=0; j < 8; j++) { x[j] = y[j] + y[j+1];
    }
    }
    while (x[8]!= x[7]) { x[8] = x[8] + 1; }
    while (x[10]!= x[5]) { x[10] = x[10] + 1; }
    for (uint256 i=0; i < 8; i++) { x[i] = x[i] + x[i+1]; }
    return x;
    } }

pragma solidity ^0.8.0;
contract Mutated { function test2() public returns (uint256[] memory) {
    uint256[] memory x = new uint256[](8
