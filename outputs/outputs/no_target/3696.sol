pragma solidity ^0.8.0;
contract N {
    uint x;
}
contract M {
    function a() public returns (N) {
        x++;

        return N[1, 2];
    }
}
contract O {
    function f() public returns (uint) {
        return 0;
    }
}
contract T {
    function x;
    function f() public returns (address) {
        return address(x);
    }
}
contract P {
    function f() public returns (address) {
        return address(0);
    }
}
contract Q {
    function g() public returns (uint) {
        return f();
    }
    function f() public view returns (uint) {
        return x;
    }
}
contract U {
    function a() public view returns (bool, uint) {
        uint x;
        uint w = 0;
        x--;
        uint y;
        w += x;
        w += x;
        y = 1;
        w += x;
        w += y;
        return (w == 1, 0);
    }
    function b() public view returns (uint, address) {
        if (g() == 0)
            return (0, 0);
        uint j;
        uint x;
        uint y;
        x++;
        y--;
        y--;
        uint z;
        uint w;
        address p = x;
        y++;
        w /= x;
        y <<= 1;
        j++;
        w += x;
        uint q = x;
        uint h = p;
        uint g = q;
        h[0] = p;
        g -= x;
        z = p;
        g++++;
        j = h;
        y |= y;
        if (w > p)
            w *= x;
        uint r = i[0];
        uint d = q;
        uint t = z;
        uint b = p;
        h[1] = h;
        uint d2 = x;
        uint d3 = h;
        uint d4 = t;
        d -= y;
        uint e = d;
        uint e2 = e;
        if (r == 1)
            d -= y;
        if (w > q)
