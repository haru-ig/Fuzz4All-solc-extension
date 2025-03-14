pragma solidity ^0.8.0;
contract MixedContactsExample100 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 ex;
    function doSomething() public {
        a = mul(a, 0x62);
        b = mul(b, 0x94);
        c = mul(ex, c);
        d = mul(c, d);
        e = mul(ex, e);
        b = add(b, sub(e, c));
    }
    function mul(uint56 a, uint56 b) public pure returns (uint56) {




        return a * b;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }
}
