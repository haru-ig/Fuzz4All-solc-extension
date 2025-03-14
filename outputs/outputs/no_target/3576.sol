pragma solidity ^0.8.0;
contract m200 {
    uint public s;
    uint public i;
    constructor() public {
        (s, i) = (s * s, uint(s));
        s += 3;
        s *= 2;
        s += 3;
        s += s;
        s = uint(s) + 10;
        s = uint(s) - uint(s);
    }
}
