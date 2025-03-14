pragma solidity ^0.8.0;
contract E {
    uint64 d;
    uint24 c;
    function g() public returns (uint24 a) {
        a = uint24(c + 0x1000) - 0x1000;
    }
}
