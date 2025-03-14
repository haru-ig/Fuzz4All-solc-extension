pragma solidity ^0.8.0;
contract A {
    function f() public pure { Lib.MyStruct memory s; Lib.MyStruct memory a; byte memory b  = s; a.a; b.a; 0xC; 0x11; }
}
