pragma solidity ^0.8.0;
contract eleven{
    uint public x;
    uint public r;
    function b() public {
        r = (r + r) * x + (r + 1);
        r = (r + r) * x + (r + 1);
        r += x;
    }
    function c() public {
        b();
        r = (r + r) * x + (r + 1);
        r = (r + r) * x + (r + 1);
    }
    function d() public {
        c();
    }
}

pragma solidity ^0.8.0;
contract twelve{
    uint public x;
    uint public r;
    uint public y;
    function e(int x) public {
        r = 1;
        x = (r + r) * r * x / 2 / 2;
        r = 1;
        x += (r + r) / 2 / 2 * (r + r) * x / 2;
        r = 1;
        x = (r + r) * x * x / 2 / 2 + (r + r);
        r = 1;
        x = (r + r) * x * x + (x + x) + (x + r);
    }
    function f() public {
        e(x);
        r = 12;
        e(r);
        r += 24;
        e(r);
    }
}











/* If
