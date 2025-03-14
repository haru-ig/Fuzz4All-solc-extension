pragma solidity ^0.8.0;
contract L71SingleReturn6 {
    bool x;
    uint y;
    uint z;
    function returnTrue() public returns (uint z, uint y, uint x) {
        uint z1;
        uint y1;
        uint x1;
        (z1, y1, x1) = x1;
        z = z1;
        y = y1;
        x = x1;
        return (uint(x), uint(y), uint(z));
    }
}
