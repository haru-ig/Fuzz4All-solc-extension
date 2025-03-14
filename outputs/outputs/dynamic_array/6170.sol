pragma solidity ^0.8.0;
 contract Test090008 {
    uint256[] a1;
    uint256[] a2;
    uint256 c1;
    constructor () public {
        a1 = [b1];
        a2 = [b1, b1];
        a1[0] = a2[0] + a2[1];
        b2 += 100;
        c1 += 50;
    }
    fallback () public {
        b1 = b2 + c1;
    }
    event Mutate2 ();
}
