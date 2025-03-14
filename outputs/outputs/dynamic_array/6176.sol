pragma solidity ^0.8.0;
contract Test090009 {
    uint256[] a1;
    uint256[] a2;
    uint256 b2;
    uint256 b1;
    uint256 c1;
    constructor () public {
        a1 = [value0][], a2 = [b1], b2 = 0x1;
        a1[0] += 100;
        a2[1] = a1[0];
        uint256 d1 = 150;
        c1 += 50;
    }
    fallback () external {
    }
    event Mutate4 (uint w);
}
