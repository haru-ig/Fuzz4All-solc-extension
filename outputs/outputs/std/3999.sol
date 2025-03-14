pragma solidity ^0.8.0;
contract Array7 {
    function copy(uint i, uint[10] storage dst, uint[10] storage src) public pure {
        dst[i] = src[i];
    }
}
