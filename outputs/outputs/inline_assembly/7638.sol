pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint) {
        return initialx - 0xEFDEDEAD - 0xCAD3BEA6 + 0x01234567 + initialx - initialx + 0x02345673;
    }
}
