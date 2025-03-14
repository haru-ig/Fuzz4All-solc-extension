pragma solidity ^0.8.0;
contract TestMutated728C {
    bool isBig;
    bool isSmall;
    uint x;
    uint y;
    uint z;
    constructor(uint _x, uint _y) {
        isBig = false;
        isSmall = false;
        x = _x;
        y = _y;
        if (z < _x * _y) isBig = true;
        if (z < _y * _x) isSmall = true;
    }
    function mul(uint x, uint y) public pure returns (uint z) {
        if (y < 0) {
            if (isBig) {
                z = x * (1 << uint(y));
            } else if (isSmall) {
                z = (1 << uint(y)) - x * y;
            } else {
                z = 0;
            }
        } else {
            if (isBig || isSmall) {
                if (x > (1 << uint(y))) {
                    z = 0;
                } else {
                    z = x * y;
                    if (isBig) {
                        z = z - uint(y);
                    }
                }
            } else {
                z = 0;
            }
        }
    }
}
