pragma solidity ^0.8.0;
contract FallbackTester {
    uint public _value;
    constructor(uint v) {
        _value = v;
    }
    function fallback(uint256 x) external pure returns (uint, uint) {
        uint256 y = div(x, _value);
        return (y, x * 2);
    }
    function fallback(uint256 a, uint256 b) external pure returns (uint, uint) {
        uint256 c = div(a, b);
        uint256 d = div(c, a) + b;
        uint256 e = div(d * b / div(uint256(2), 1), b);
        uint256 f = div(uint256(3), 1, b);
        uint256 ret = d + div(e * f / div(a, 1), a);
        return (ret, e + ret * 2);
    }
    function fallback(uint256 a, uint256 b, uint256 c) external pure returns (uint, uint) {
        uint256 d = div(b, c);
        uint256 e = div(uint256(5), 3, b);
        uint256 f = div(a, e);
        uint256 g = div(b, a + 1);
        uint256 h = div(div(a, a - div(b / 2, 5)), uint256(5));
        uint256 ret = uint256(5) + 2 + e + div(g + div(h + g * e / c, uint256(7)));
        return (ret, a + ret * 2);
    }
}
