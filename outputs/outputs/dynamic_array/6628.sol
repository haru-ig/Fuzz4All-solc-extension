pragma solidity ^0.8.0;
contract T8FA_mutator_0xe {
    uint256 i = 0;
    uint256 j = 0;
    uint256 k;

    T8FA_mutator_0xd x;

    function f() public {
        x.i = 0;
        x.i2 = 0;
        x.i4 = 0;
        x.i6 = 0;
        x.i8 = 0;
        x.i10 = 0;
        x.i11 = 0;
        x.i14 = 0;

        x.i = 0;
        x.i2 = 0;
        x.i4 = 0;
        x.i6 = 0;
        x.i8 = 0;
        x.i10 = 0;
        x.i11 = 0;
        x.i14 = 0;

        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i4++;
        i4++;
        i4++;
        i4++;
        i4++;
        i4++;

        j = i;
        i += 16 * j;
        k = 15 + i.div(j);
    }
}
