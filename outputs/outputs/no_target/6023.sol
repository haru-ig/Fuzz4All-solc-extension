pragma solidity ^0.8.0;
contract C {
    function f() view public returns (uint8) { return Lib.MyStruct.a; }

    function g() public returns (uint8) {
        uint8 a = Lib.MyStruct.a;
        Lib.MyStruct memory r = Lib.MyStruct(a);
        Lib.MyStruct memory r2 = Lib.MyStruct(Lib.MyStruct(a));
        Lib.MyStruct memory r3 = Lib.MyStruct(255);
        Lib.MyStruct memory r4 = Lib.MyStruct(uint8(-256));
        return uint8(uint(255) - uint160(uint8(r3.a)));
    }
}
