pragma solidity ^0.8.0;
abstract contract c {
    function f() public returns (s memory) {
        return l.get();
    }
}
address addr = 0x0;
c con = c(addr);
con.f();
