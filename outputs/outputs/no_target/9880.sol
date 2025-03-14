pragma solidity ^0.8.0;
contract C {
    function f() internal view returns (uint32 x) {
        if(x == 0x100) return 0x100;
        if(x >= 0x200) x += 0x100;
    }
    function f(i z) internal view returns (uint32 x) {
        x = z.m();
    }
}
