pragma solidity ^0.8.0;
contract ten{
    uint public r;
    uint public x;
    function a() public {
        r = (r + r) - x + 1;
        x = 2;
    }
    function b() public {
        a();
        r = (r + r) - x + 1;
        x = 2;
    }
    function c() public {
        b();
        r += 42;
        b();
    }
    function d() public {
        b();
    }
}
