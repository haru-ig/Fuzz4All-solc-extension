pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint y) {
        uint __12 = 0xCAD3BEA63847187B;
        uint __0c = 0xDEADDEF0;
        uint _tmp0 = initialx - __0c + __12;
        uint __0a = initialx - _tmp0;
        uint __08 = f();
        uint __06 = initialx - __0a;
        uint __05 = initialx - __08;
        uint _tmp1 = initialx - __06 + _tmp0;
        uint _tmp2 = initialx + initialx - __05;
        return initialx - _tmp1 + _tmp2;
    }
}
