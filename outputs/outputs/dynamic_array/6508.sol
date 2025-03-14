pragma solidity ^0.8.0;
contract T3E2 {
    uint256 v;
    uint256[] mem = [1, 2];
    uint256[] mem2;
    uint256[] mem3;
    uint256[] mem4;
    uint256[] mem5;
    uint256[] mem6;
    uint256[] mem7;
    uint256[] mem8;
    uint256[] mem9;
    constructor () {
        mem = [100, 200];
        if (v == 1) {
        mem2 = mem;
        }
        mem5 = [7, 9, 10];
    }
}

pragma solidity ^0.8.0;
contract T3E3 {
    uint256 v;
    uint256[] mem = [1, 2];
    uint256[] mem2;
    uint256[] mem3;
    uint256[] mem4;
    uint256[] mem5;
    uint256[] mem6;
    uint256[] mem7;
    uint256[] mem8;
    uint256[] mem9;
    uint256[] mem10;
    uint256[] mem11;
    uint256[] mem12;
    uint256[] mem13;
    constructor () {
        mem2 = mem;
        mem9 = [20, 40, 60];
        if (v == 1) {
            mem3 = mem;
            delete mem2[0];
            mem4[1] = 177;
            delete mem2[2];
            mem5 = mem + [10];
            mem10 = [12, 14, 3];
            mem11[2] = 0xFFFFFFFD;
            delete mem2[6];
            mem12 = [13, 4];
            delete mem3[0];
            mem13 = mem + [40];
        }
    }
}
