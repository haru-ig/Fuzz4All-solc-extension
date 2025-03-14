pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public y;
    uint public z, w, r, s, t;
    constructor(uint _x, uint _y) public {
        _x = 0;
        y = 1;
        z = 2;
        s = x * this.z + _y;
        r = s * this.x / 2 + y;
        w = (z * x + y) * this.x;
        t = x * _x / this.y + x * this.z;
        _x = r * s / 2 + w;
        t = w * r;
    }
}
