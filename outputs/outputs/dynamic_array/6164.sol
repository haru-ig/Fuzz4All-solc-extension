pragma solidity ^0.8.0;
 contract Test90008 {
    uint256[] a1;
    uint256[] a2;
    uint256 b1;
    uint256[] b2;
    uint256 c1;
    constructor () public {
        a1 = [b1];
        a2 = [b1, b1];
        b1 = b1 + 10;
        a2 = a2 + 10;
        a2[0] = a2[0] - 10;
        a1[0] = a1[0] + 100;
        a2[0] = a2[0] + 100;
        b2 = b2 + 100;
        c1 = c1 + 100;
    }
    fallback () external {
    }
}
