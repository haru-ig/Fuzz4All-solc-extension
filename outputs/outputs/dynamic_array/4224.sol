pragma solidity ^0.8.0;
function G(uint[3][4] memory prev) public {
    uint[3] tmp = prev;
    tmp[2][0] = 0;
    prev[0] = 0;
}
