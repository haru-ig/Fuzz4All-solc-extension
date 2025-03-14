pragma solidity ^0.8.0;
contract Test {
    uint constant initialx = 0x01234501;
    function test() public pure returns (uint) {
        uint _x;
        assembly {
            _x := initialx
            sstore(1, add(0xEFDEDEAD, 0xCAD3BEA6))
            sstore(2, mul(0xEFDEDEAD, 0xCAD3BEA6))
            sstore(3, mul(0xEFDEDEAD, 0xCAD3BEA6))
        }
        return initialx - initialx + _x + initialx + _x + _x;
    }
    function test2() public pure returns (uint) {
        uint _x;
        assembly {
            _x := initialx
            sstore(1, add(0xEFDEDEAD, 0xCAD3BEA6))
        }
        return initialx - _x;
    }
}
