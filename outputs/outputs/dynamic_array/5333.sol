pragma solidity ^0.8.0;
modifier k() {
    Test75.j(1);
    uint x;
    uint y;
    x = 5;
    for (y = 0; y < 1000000; ++y) {
        Test75.j(x, y);
        uint512 s = uint512(uint256(x) * uint256(y));
    }
    revert();
}
