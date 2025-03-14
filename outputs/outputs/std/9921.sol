pragma solidity ^0.8.0;
contract S10Mutated11 {
    function log(uint8 x) internal {
        a = x;
    }
}
contract S12Mutated5 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    uint8 g;
    uint8 h;
    uint8 i;

    constructor (uint8 x, uint8 y, uint8 z, uint8 w, uint8 u, uint8 v, uint8 ww, uint8 a, uint8 b, uint8 c, uint8 d, uint8 e) {
        a = x;
        b = y;
        c = z;
        d = w;
        e = u;
        f = v;
        g = ww;
    }

    function addCommuted(uint8 x, uint8 y) public pure returns (uint8) {
        return _addCommuted(x, y, 0);
    }
    function addCommuted(uint8 x, uint8 y, uint8 w) public pure returns (uint8) {
        return _addCommuted(x, y, w);
    }
    function _addCommuted(uint8 x, uint8 y, uint8 w) private pure returns (uint8) {
        if (w < 0x100) {
            uint8 x0 = (x & 0x00000000000000ff) +
                  (y & 0x00000000000000ff);
            uint8 y0 = ((x >> 8) & 0x00000000000000ff) +
                  ((y >> 8) & 0x00000000000000ff);
            return ((x0 & (1 << (8 - w))) |
                    ((y0 & (1 << (8 - w))) << (8 - w))));
        } else {
            uint8 x0 = (x & 0x00000000000000ff) +
                  (y & 0x00000000000000ff);
            uint8 y0 = ((x >> 8) & 0x00000000000000ff) +
                  ((y >> 8) & 0x00000000000000ff);
            uint8 w0 = (z & 0x000000
