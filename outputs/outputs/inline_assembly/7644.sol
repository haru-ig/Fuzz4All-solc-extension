pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint) {
        return 0xDEADEDFEED - 0xBEEFDBEF + initialx - initialx + 0xEBADAEDDEADBEADA + 0xE1EADBEADC;
    }
}

pragma solidity ^0.5.0;
contract L5 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint) {
        return 0xEFDEDEAD - 0xCAD3BEA6 + initialx - initialx + 0xFEDDDECA + initialx - initialx + 0xF9BEBEB3;
    }
}
