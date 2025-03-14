pragma solidity ^0.8.0;
contract Array7 {
    function copy(uint i, uint[][] memory dst, uint[][] memory src) public pure {
        dst[i] = src[i];
    }
}
