pragma solidity ^0.8.0;
library Lib {
    uint8 internal constant N = 6279;
    int public x = int(0);
    uint8 public y = 2 ** N - 1;
    uint28 public z = int(y >> N);
    bool public z2 = y >= (4 * N >> 2) && y < (4 * N >> 1);
    uint256 public a = 128;
    uint64 internal _a = int((uint256(N) * a) >> 1);
    function x() public view returns (uint17) {
        uint17 k;
        uint8 t;
        uint256 s;
        for (k = 0; k < 16; t = t + 1) {
            s *= int(2);
            s += 1;
            if (x < (4 * t)) {
                s += ((x >> (t << 1)) & 1);
            }
        }
        for (k = 16; a <= x; a = a << 1) {
            s *= (a >> 7);
            s *= (int(t) + 8);
        }
        return s;
    }
}
