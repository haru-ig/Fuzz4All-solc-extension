pragma solidity ^0.8.0;


contract TestAsm {


function test(uint w, uint z, uint y, uint x, uint v, uint u, uint t, uint s) public {
    w += x + y + z;
    z -= 4;
    w = w + t + w * u + v * (y * w + t);
    x += 2 * (z + w);
}

function main() public {
    test(1, 2, 3, 4, 5, 6, 7, 8, 9);
}
```
