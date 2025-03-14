pragma solidity ^0.8.0;
contract M12{
    constructor() public { x[1] = true; x[2] = true; x[5] = true; x[3] = true;}
    function xorSwap(uint16 n1, uint16 n2, uint256 t) internal returns (uint8) {
        uint16 b1 = x[n1];
        uint16 b2 = x[n2];
        x[n1] = (x[n2] ^= t);
        x[n2] = (m15(b1) ^ m15(b2));
        return x[b1 ^ b2]? (x[n1] -= 2 * (n1 - n2) + 1, 2 * (n2 + 1)) : 0;
    }
    function m15(uint16 s) internal returns (uint16) {
        return s / 4 * s;
    }
}
