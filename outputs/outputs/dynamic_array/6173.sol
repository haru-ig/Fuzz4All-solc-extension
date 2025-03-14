pragma solidity ^0.8.0;
contract Test090008 {
    uint256[] a1;
    uint256[] b1;
    uint256 a2;
    uint256 b2;
    uint256 c2;
    bytes c1;
    constructor () public {
            b1 = [a1];
            a1[0] += 100;
            a2 = 200;
            b1[0] = b1[0];
            uint256 i = 1;

            b2 += a1[0];
            b2 += a1[1];
            c2 = 400;
            c2 += a2;
            a2 += a2;
            b1[0] = c2;
    }
     event Mutate3 ();
}
