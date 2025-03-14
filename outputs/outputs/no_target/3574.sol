pragma solidity ^0.8.0;
contract m210 {
    uint public s;
    uint public i;
    constructor() public {
        s = s + 1;
        (s, i) = (s * s, uint(s));
        s += 3;
        s *= 2;
        s += 3;
        s = uint(s) + 10;
        s = uint(s) - uint(s);
    }
}
