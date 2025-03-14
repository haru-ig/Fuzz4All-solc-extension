pragma solidity ^0.8.0;
contract Array9 {
    function copy(uint i, uint256[3] memory dst, uint256[32] memory src) public pure {
        uint8 a = src[i];
        for (uint j = 0; j < 32; j++) {
            dst[i][j] = src[a][j];
        }
    }

    function copy2(uint i, uint256[3] memory dst, uint256[32] memory src) public pure {
        for (uint j = 0; j < 3; j++) {
            dst[i][j] = src[i][j];
        }
    }
}
