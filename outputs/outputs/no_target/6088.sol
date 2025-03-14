pragma solidity ^0.8.0;
contract Mod6 {
    address x;
    uint a;
    uint x1;
    function g() public view{
        a = uint16(x);
        a = uint(a);
        a = a << 1;
        a = 2**(x1);
        x1 = 4*x1;
    }
    function h() public {
        a = uint16(x);
        a = uint(a);
        a = a >> 1;
        a = 2**(x1);
        x1 = 4*x1;
    }
    function f1() public {
        x -= x1;
        g();
        h();
    }
}
