pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82 is MixedContactsExample81, MixedContactsExample83 {
    uint256 f;
    uint256 g;
    uint256 h;
    uint256 i;
    uint256 j;
    uint256 k;
    uint256 l;
    uint256 m;
    uint256 n;

    uint256 c1;
    uint256 c2;
    uint256 c3;
    uint256 c4;
    uint256 c5;
    uint256 c6;
    uint256 c7;
    uint256 c8;
    uint256 c9;
    uint256 c10;
    uint256 c11;
    uint256 c12;
    uint256 c13;
    uint256 c14;

    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;

        b_test();
        c_test();
        d_test();
        e_test();

        f_test();
        g_test();
        h_test();
        i_test();
        j_test();
        k_test();
        l_test();
        m_test();
        n_test();

        c1 = a + 1;
        c2 = 5 + 4;
        c3 = c2 + 6;
        c4 = c3 + 4;
        c5 = c14 + 1;
        c6 = 1 + 2;
        c7 = c2 + c5;
        c8 = (c7 + (128 - (4 >> -2))) + c4;
        c9 = c4 + ((c9 << 0) + (128 >> 8));
        c10 = (32 >>> 1) - (8 >>> 9);
        c11 = c6 + c4;
        c12 = (c6 - 8) + 129 / 5;
        c13 = (c6 << 25) + 221;
        c14
