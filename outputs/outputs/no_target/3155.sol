pragma solidity ^0.8.0;
contract ten{
    uint public r;
    uint public x;
    uint public y;
    uint public z;
    uint public w;
    function a() public {
        uint result = - (y + y) + (x + x);
        y = (y + y) - 2;
        x = (x + x) + (y + y);
        r -= z;
        z -= w;
        w = (w + w) - ((r + r) - r);
        r = 2;
    }
    function b() public {
        a();
        uint result = x || (r & r) || (x - r) ^ 1;
        r = (r + r) - (2 + 1);
    }
    function c() public {
        a();
        uint result = x > z;
        r = (r + r) - ((x & z) + ((x & z) + x) * (x & z)) + 1;
    }
    function d() public {
        b();
    }
}
