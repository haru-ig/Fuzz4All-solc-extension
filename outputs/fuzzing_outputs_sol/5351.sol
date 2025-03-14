pragma solidity ^0.8.0;
struct S {
    int8 x;
    uint16 y;
}
contract C {
    using mapmap for mapmap.mapmap;
    modifier x(int8 x) {
        if (x == 42) {
            _;
        }
    }
    uint8 y;
    mapmap.mapmap m;
    mapmap.mapmap mapmap;
    mapping(uint => S) a;
    function f() external {
        x(-123);
        y += 42;
        y -= 21;
        y = 0x3e9c;
        int8 x1 = -8000;
        mapmap.mapmap calldata m1;
        mapmap.mapmap calldata mapmap1;
        a[1].x = 255;
        a[1] = (22000, 216);
        a.set(-85, S(-85, 220));
        m[1].f();
        mapmap.x(123);
        mapmap.g();
        mapmap1.g();
        m.f();
        a.set(85, S(a.get(85).x));
        mapmap.f();
    }
    function g() public {
    }
}
