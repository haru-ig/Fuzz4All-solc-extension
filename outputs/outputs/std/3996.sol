pragma solidity ^0.8.0;
contract Array7x {
    function copy(uint i, uint[10] memory dst, uint[10] memory src) public pure {
        if (src[i] <= 0)  dst[i] = 0;
        else               dst[i] = src[i];
    }
}
