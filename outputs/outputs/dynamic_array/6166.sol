pragma solidity ^0.8.0;
contract Test90005 {
    uint256[] [10] memory  a1;
    uint256  b3;
    uint256  b4;
    uint256  b5;
    uint256  b6;
    uint256  b7;
    uint256  b8;
    uint256  b9;
    uint256 c1;
    constructor () public {
        a1 = [ b1 ];
        a1[0] = a1[0];
        a1[0] += 10*a1[0];
        a1[0] += 100;
        a1[0] = b1;
        a1[1] = b3;
        a1[2] = b1;
        a1[3] = b1;
        a1[4] = b1[0];
        a1[5] = b1[0];
        a1[6] = b1[0];
        a1[7] = b1[0];
        a1[8] = b1[0];
        a1[9] = b1[0];
        b3 += 50;
        b4 += 50;
        b5 += 50;
        b6 += 50;
        b7 += 50;
        b8 += 50;
        b9 += 50;
        a1[0][0] += 10;
        a1[0][0] += 100;
        c1 += 50;
    }
    fallback () external {
    }
    event Mutate ();
}
