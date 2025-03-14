pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint) {
        return initialx - 0xEFDEDEAD - 0xCAD3BEA6 + initialx - initialx + initialx - initialx;
    }
}
