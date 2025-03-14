pragma solidity ^0.8.0;
 contract Test41 {
    event logEvent4(uint[1][2][] arr2d);
    uint32[1][][1][] arr2;
    constructor() payable {
    }

    receive () external payable {
        uint32[1][][1][] storage arr2s[] = arr2;
        for (uint256 i = 0; i < 1; i++) {
            for (uint256 j = 0; j < 1; j++) {
                uint32[] memory arr1 = arr2s[i][j];
                uint48[] memory arr2 = arr1;
            }
        }
    }
}
