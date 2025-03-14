pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint y) {
        uint __12 = 0xCAD3BEA63847187B;
        uint __0e = 0xEFDEDEAD;
        uint _tmp1 = initialx - __0e + __12;
        uint __0b = initialx - _tmp1;
        uint __09 = f();
        uint __08 = initialx - __0b;
        uint _tmp2 = initialx - __09 + _tmp1;
        uint _tmp3 = initialx + initialx - __08;
        return initialx - _tmp2 + _tmp3;
    }
}
