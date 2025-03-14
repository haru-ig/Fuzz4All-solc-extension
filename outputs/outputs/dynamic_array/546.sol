pragma solidity ^0.8.0;
contract test2
{
    address a;
    uint224 b;
    uint255 c;
    uint e = 3;
    uint224 f = 1;
    uint g = 1
    function h() public
    {
        b = f;
        b += b;
        f /= 2;
        c += c;
        b -= b;
        c -= 100;
        c -= c;
        b += c;
        b += c;
        b -= c;
        i();
    }

    function i() public
    {
        c -= 1;
        uint[] memory h = new uint[](2);
        h[0] = 10;
        h[1] = h[0];
        h = new uint[](1);
        h[0] = h[0];
    }
}

pragma solidity ^0.8.0;
contract test24
{
    constructor(address payable _a) public
    {
        a = _a;
    }

    function f() public
    {
        a.call{value:1}("");
        b();
    }
    function set(uint v) public
    {
        a.call{value:1}("");
        b.value(v);
    }
    function b() public
    {
        a.call{value:1}("");
    }
}
