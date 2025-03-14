pragma solidity ^0.8.0;
contract E {
    uint24 c;
    uint d;
    function g() public returns (uint, uint24, uint64) {
        uint a = uint24(c + 0x1000) - 0x1000;
        uint b = uint256(c + 0x1000) - 0x1000;
        uint o = d + 0x1000;
        uint p = uint256(d) + 0x1000;
        return (a, b, o);
    }
}
