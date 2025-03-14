pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    uint[][] d;
    uint[][3] e;
    constructor () public {
        a_b();
        b();
        c();
        d[0] = [0];
        d[0][0] = 0xffffffffffffffff;
        e[0] = [0];
        e[0][0] = 0xffffffffffffffff;
    }
    function a_b() public view {
        for (int i=0; i<3; i++) {
            for (int j=0; j<3; j++)
                a[i][j] = [j,i,j+1,i18];
            a[i][2] = [0xff];
            a[2][i] = [0xff];
            a[2][2] = [0xff];
        }
    }
    function b() public {
        for (uint i=0; i<3; i++) {
            a[2][i] = 0xffffffffffffffff;
            a[i][2] = [0];
        }
    }
    function c() public {
        a[2][2] = 0xffffffffffffffff;
        a[2][2] = [0];
        a[2][2] = 0xffffffffffffffff;
    }
}
