pragma solidity ^0.8.0;
contract Foo {
    function bar(uint256 x) {
        g(uint128(x));
        address addr;
        (uint128 w,) = g(addr);
        uint256 val;
        val += x;
        uint128 y;
        (y,) = g(val);
        (y,) = g(-val);
        (y,) = g(uint256(-x));
        (y,) = g(uint256(x));
        (y,) = g(uint256(a));
        (y,) = g(uint256(b));
        (y,) = g(uint256(b + x));
        (y,) = g(uint256(b + a));
        (y,) = g(uint256(b - x));
        (y,) = g(uint256(b - a));
        (y,) = g(uint256(b * x));
        (y,) = g(uint256(b * a));
    }
    function g(address o) internal returns (uint256, uint256) {
        uint256 val;
        return (uint256(o), o);
    }
}
contract Bar {
    function f() internal pure {
        uint256 x = 10**8;
        x += x + uint16(-(3 % 4));
        x += uint256(-x)/uint16(-x)/uint16(x)/uint16(x)/uint16(x);
        x += 0.1/uint16(uint256(x));
        x *= x/uint16(uint256(x));
        x += uint256(uint16(uint256(x) + uint16(uint256(x) - uint256(a))))+uint256(uint16(uint256(x) + uint256(x) + uint256(x) - uint256(a))));
        x += uint256(uint16(uint256(a) + uint256(uint16(uint256(x) + uint16(uint256(x) - uint256(a))))+uint256(uint16(uint256(uint256(x) + uint256(x) + uint256(x) - uint256(a))))+uint16(uint256(x) + uint16(uint256(x) + uint256(x) + uint16(uint256(a)))));
    }
}
