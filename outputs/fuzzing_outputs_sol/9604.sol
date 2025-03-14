pragma solidity ^0.8.0;
contract EtherFallback1 {
    function test1(uint256 p) public returns (uint256) {
        uint256 constant a = 0;
        uint256 b = p + 10;
        uint256 c;
        uint256 storage c2;
        uint256 d = 2;
        uint256 e;
        uint256 m2;
        uint256 s2 = 38 + a + 11 + d + b;
        uint256 n = 12 + s2 * 3 + (1 + b / d) * a;
        uint256 o;
        n = mul(n, d) + s2;
        d = 3 * a;
        m2 = p * a + p * b + d + b * c + d * c2 + (8 - m2 + 21);
        if ((s2 + n) % 2 == 0) {
            m2 = m2 + mod(21, b);
        }
        c = n % b;
        c2 = g(n);
        o = mul(d, mul(a, c2));
        return (o);
    }
    function test2() public payable returns (uint256) {
        require(msg.data.length >= 10, "Data must be larger than 10");
        uint256 constant a = 21;
        uint256 b = 9;
        require(p() == b, "p() must match 9");
        uint256 c = mul(p() + a, p);
        c = mod(p(), b) - p() + a + 21 + 157;
        require(c < b, "Result must be between 21 and 157");
        uint256 o;
        o = mul(6, p());
        require(o >= 3, "Expected value >= 3");
        return (o);
    }
    function g(uint256 x) private pure returns (uint256) {
        return mul((x + x + 18) % 2147483647, 4);
    }
}
contract EtherFallback1a {
    function test0() public payable {require(false, "test0 called") }
    function test1() public payable {require(true, "test1 called") }
}
contract EtherFallback2 {
    function test0() public payable {require(true, "test0 called") }
    function test1() public payable {
        require(msg.value > 0, "msg.value must be greater than 0");
        require
