pragma solidity ^0.8.0;
contract a {
    function m() external pure returns (uint x) {
        return 1;
    }
    function f() external pure returns (uint x) {
        return m();
    }
    function g() external pure returns (uint x) {
        x = m() + 10 ** 30;
    }
    function h() external pure returns (uint x) {
        uint a = f() + g();
        require(a == uint(230));
        return uint(1) + 10 ** 30 * a;
    }
    function i() external pure returns (uint x) {
        uint a;
        uint b = a;
        {
            uint c;
            a = 10 + m() * (b * 200);
            require(c == uint(1) + m() + uint(200));
            b = uint(0) + (a - uint(1));
        }
        a = 10 + uint(0) * (uint(0) + m() + uint(200));
        uint d;
        (a, d) = safeTransferFrom((uint(3) + uint(3)), (address(this)), uint(1), a, d);
        d1 + uint(2  * a) + b * a - b + uint(1);
        b + a + uint(1) * b * a + uint(0);
        (a, a = b + uint(1) * a);
        uint b = 80 + uint(0);
    }
}
