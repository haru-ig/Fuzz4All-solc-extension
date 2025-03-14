pragma solidity ^0.8.0;
contract Array8 {
    function copy(uint i, uint[10] memory dst, uint[10] memory src) public pure {
        dst[i] = src[i];
    }
}
