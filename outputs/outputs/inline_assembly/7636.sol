pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01234501;
    modifier f() {
        return initialx - 0xEFDEDEAD - 0xCAD3BEA6 + initialx - initialx + initialx - initialx;
    }
    function f1() public {
        f();
        f();
    }
}
