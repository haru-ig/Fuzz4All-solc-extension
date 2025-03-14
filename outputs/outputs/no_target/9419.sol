pragma solidity ^0.8.0;
contract SemanticalEquiv18
{
    function f1() view public { return 0; }
    function f2() view public { return 1; }
    function f3() view public { return -1; }
    function f4() view public { return -0x0001; }
    function f5() view public { return 0xfffffffffffffffffffffffffffffff; }
    function f6() view public { return uint160(0x01000000000000000000000000000000000ffffffffff); }

    function f7() pure public { }
    function f8() pure public { }

    uint256 private f9;

    function f10() view public returns (bytes32 b) {
        b = bytes32((4 + 1) & 0x12312312);
    }
    function f11() view public returns (bool b) {
        b = 4 > 3;
    }
    function f12() view public returns (uint160 x) {
        x = uint160(1);
        return x;
    }
}
