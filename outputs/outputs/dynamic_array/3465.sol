pragma solidity ^0.8.0;
contract C {
    uint x=4;
    uint[] y;
    uint[][][] z;
    z[x][y][0][0][0] = uint256(100);
    z[x][y][0][0][1] = uint256(66);
    x=0;
    y.push();
    z.push();
    C o = new C();
    o.multiply(1000, 365);
}
