pragma solidity ^0.8.0;
contract E2 {
    uint256 d;
    uint256 e;
    uint256 a;
    function h() public {
        b(a, e, d);
    }
    function f() public {
        a = ~a;
        b(e, d, a);
    }
    function b(uint256 s1, uint256 s2, uint256 s3) public pure {
        s1 > (e - d) + (a - d) || s1 > (d - s1) + (e - s1) - (a - s1) || s2 > (e + s3) + (a + s3) - (d + s3) || s3 > (s3 - a) + (b(a + s1, s2, s3-b(a + s2, s1, s3)) + a)) || s3 > (a - b(a + s1, s2, s3-b(a + s2, s1, s3)) - d) || s2 <= (e + d) - (b(a + s1, s2, s3-b(a + s2, s1, s3)) - b(a + s2, s1, s3-e(a + s2, s1, s3))) || s1 <= (a - s2) - (b(a + s1, s2, s3+b(a + s2, s1, s3)) - e(a + s2, s1, s3))) || s1 <= (a - s2) - (a - d) - (b(a + s1, s2, s3-b(a + s2, s1, s3))) || s1 <= (a - s2) - (b(a + s1, s2, s3+b(a + s2, s1, s3))) - b(a + s2, s1, s3)) || s1 <= (a - s2) - (b(a + s1, s2, s3-d) - b(a + s2, s1, s3))) || s1 <= (a - s2) - (e + s3) - (b(a + s1, s2, s3-a) + a) || s2 <= (a + s3) - (e - s3) - (b(a + s1, s2, s3-a) + a) || s1 <= (a - s2) - (a - s3) - (b(a + s1, s2, s3-b(a + s2, s1, s3))) || s2 <= (b(a + s1, s2
