pragma solidity ^0.8.0;
contract M9 {
    struct B { uint u; uint v; uint w; }
    struct B3 { uint u; uint v; uint w; uint x; }
    function b3() public {
        B3 memory x;
        x.u = 1;
        x.v = 2;
        x.w = 3;
        x.x = 4;
        B memory b;
        b.u = 1;
        b.v = 2;
        b.w = 3;
        b.x = 4;
    }
    function double(uint x) public {
        B memory b;
        b.u = x;
        b.v = x;
        b.w = x;
        b.x = 3207;
    }
}
