pragma solidity ^0.8.0;
contract Array9 {
    function zero(uint i, uint256[2] memory dst, uint256[2] memory src) public pure {
        dst[i] = src[i];
    }
}
