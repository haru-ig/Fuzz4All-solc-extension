pragma solidity ^0.8.0;
contract OldY3 {
    mapping(uint256 => uint256) a;

    function add(uint256 x, uint256 y) internal {
        (uint256 x2,) = (x, x);
        a[x] = x + x2;
        x2 <<= 1;
        a[x2] += x + x2 + 3;
        a[x2 | 1] = x + x2 + 5;
    }

    function sub(uint256 x, uint256 y) internal {
        (uint256 x2,) = (x, x);
        uint256 x2_1 = 2 * x;
        (x2_1 ^= x2);
        a[x] = x + x2_1;
        a[x2] = x + x2;
        x2 <<= 1;
        a[x2
