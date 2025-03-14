pragma solidity ^0.8.0;
 contract Test90007 {
    uint256[] a1;
    uint256[] a2;
    uint256 b2;
    uint256 b1;
    uint256 c1;
    constructor () public {
        a1 = [b1];
        a2 = [b1, b1];
        a1[0] = b1;
        a2[0] = a1[0];
        a2[0] += 10+a2[0];
        a1[0] += 100;
        b1 += 50;
        b2 += 50;
        c1 += 50;
    }
    fallback () external {
    }
    event Mutate ();
}
