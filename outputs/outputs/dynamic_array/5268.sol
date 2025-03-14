pragma solidity ^0.8.0;
contract Test56 {
    constructor () {}
    function f() public pure returns (uint) {
        unchecked {
            uint m = 0xf3;
            uint u; uint v; uint w;
            for (uint i = 0; i < 0x1000; ++i) {
                 w = m ^ (uint256(i) & -0x10000);
            }
            u = w;
            u &= m;
            for (uint j = 0; j < 0x4000; ++j) {
                 w = u ^ (uint256(j) & -0x100);
            }
            v = w;
            v &= m;
            for (uint k = 0; k < 0x4000 * 0x40; ++k) {
                 w = v ^ (uint256(k) & -0x1);
            }
            return w ^ (uint256(v) << 0x1000) ^ u ^ (uint256(v) << 0x1000000 * 1);
        }
    }
}
