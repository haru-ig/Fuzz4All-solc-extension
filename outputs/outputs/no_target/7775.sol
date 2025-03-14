pragma solidity ^0.8.0;
contract C {
    uint b;
    address c;
    address d;
    mapping(address => uint) e;
    function f(uint i) public pure returns (uint r_b) {
        r_b = 8 + b;
        r_b += (i >= 2 || b) && uint(o()) >= 2;
        r_b += uint(r());
        r_b += (i % 2!= 1) && uint(l()) <= 2;
        r_b += uint(s());
        r_b += (i == (3 & ~2)) && uint(x()) < 3;
        r_b += uint(y());
        r_b += uint(c);
        r_b += uint(d);
        r_b += uint(n());
        r_b += uint(x());
        r_b += uint(e.get(o()));
        r_b += uint(this).get(b);
        r_b += uint(this);
        r_b += uint(uint(i));
        r_b += uint(uint8(e[b]));
        return r_b;
    }
    function h(uint j) public returns (uint r) {
        r = (8 + b) + (j >= 2 && uint(c) >= 2) + (j % 2!= 1) + (uint(d).get(b)) + uint(n());
        r = (r + (j == (3 & ~2))) % 3 + (j >= 2 && uint(o()) >= 2);
        r = (r + uint8(e[b])) + (i.get(b) < 0) + (uint(b));
        r = (i.get(b) < 0 || (j >= 2 && uint(e[b]) % 2!= 0))? (r + (i % 2!= 1)) : 0;
        r = (r + uint8(s())) + (j < 0)? (uint(b)) : 0;
        r = (r + uint8(s())) + (uint(a)) + (j < 0)? (uint(d)) : 0;
        r = (r + uint8(a)) + (uint8(this).get(c)) + (i.get(b) < 0);
        r = (r + uint8(s())) + (uint(j));
        r = uint(this).get(c) + uint(this) + uint(b) + uint(this) + uint(b);
        r = uint(this).get(d) + 0;
        r = uint(this).
