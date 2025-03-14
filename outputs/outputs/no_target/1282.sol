pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test {
    function test(uint n, bytes memory s) public {
        (uint x1, uint x2, uint x3) = (n, n, n);
        uint x4 = n + 1;
        uint x5 = n - 1;
        int128 i;
        (i, i) = (x, x);
        (i, i) = (x3, i);
        (i, i) = (x2, i);
        (i, i) = (x4, i);
        (i, i) = (x1, i);
        (x1, x2, x3) = (i, i, 1);
        x1 = n;
        x5 = n;
        uint x6 = 0;
        (x1, x2, x3) = (n, x1, x2);
        (n, x2, i) = (x1, x2, n + 1);
        i = n + 1;
        (x1, x2, i) = (x2, i, n - 1);
        (x1, x2) = (x1, x2);
        x1 = i + 1;
    }
}
