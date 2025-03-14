pragma solidity ^0.8.0;
contract T8FA_mutator_0xf {
    T8FA_mutator_0xd T8FAmutable;
    uint8[100] constant C = [uint8(5)];
    constructor () {
        T8FAmutable = T8FA_mutator_0xd(0);
        C[1] = T8FAmutable.i;
        T8FAmutable.i = C[2];
        T8FAmutable.i2 = C[2];
        T8FAmutable.i4 = C[4];
        uint8 j = 1;
        for (; j < 6; j++) {
            C[2 + j] += C[j];
        }
        T8FAmutable.i6 = C[2 + 5];
        T8FAmutable.i8 = C[2 + 1];
        T8FAmutable.i10 = C[2 + 3];
        T8FAmutable.i11 = C[2 + 4];
        T8FAmutable.i14 = C[20];
        T8FAmutable.i4 = j;
    }
}
