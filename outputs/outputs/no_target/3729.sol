pragma solidity ^0.8.0;
contract E {
    uint64 d;
    uint24 c;
    function g() public returns (uint64) {
        return uint64(c + 0x1000) - 0x1000;
    }
}
