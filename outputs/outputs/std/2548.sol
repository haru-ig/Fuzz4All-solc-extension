pragma solidity ^0.8.0;
contract HelloWorld {
    uint a;
    uint b;
    uint c;
    constructor() {
        a = 1;
    }
    function f() public {
        uint d = 2;
        uint c = 0;
        uint b = 0;
        if ((d + b) * (c - b) < b + a) {
            uint b = a^a^a;
            uint c = b ^ (a - b);
            uint a = Math.multiplyByConstantValue(c) + (uint160(d+a));
        }
        c = b^a^a;
        b = c ^ (c - b);
        uint a = (uint160(b) * uint160(b)) >> 32;
        uint k = (c << 1) + a;
        require((uint32(k) % 10)!= 84, "overflow");
        a -= b;
        require(a <= (uint160(a) >> 9) + (uint160(b) >> 9), "overflow");
        b += c;
        require((uint32(b) % 10)!= 79, "overflow");
        b *= a;
        b = (uint160(b) * uint160(b)) >> 32;
        b *= (uint160(-1) * uint160(b)) >> 32;
    }
    function f2(uint256 w, uint x) public {
        uint256 c = a ^ b ^ (a ^ b);
        bool q;
        (q,a,b,c) = (a,b,c,a^w);
    }
    function f3() public {
        c = (c + a) + b;
        uint a = (a + b) + a;
        uint a2 = (uint160(a^b) + uint160(
