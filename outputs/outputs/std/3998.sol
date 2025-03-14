pragma solidity ^0.8.0;
contract Array8 {
    function copy(uint i, uint256[3] memory dst, uint256[3] memory src) public pure {
        dst[i] = src[i];
    }
}
