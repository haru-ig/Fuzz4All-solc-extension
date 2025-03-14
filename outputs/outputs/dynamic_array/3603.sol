pragma solidity ^0.8.0;
contract C {
    struct s {
        uint256 x;
    }
    constructor() public {
        s memory y;
        uint256[3] memory x = new uint256[](3);
        uint256 i;
        for (i = 0; i < 3; ++i) {
            x[i] = 0;
        }
        for (i = 0; i < 3; ++i) {
            x[i] = int256(i);
        }
        for (i = 0; i < 3; ++i) {
            y.x = i;
        }
        x[2] = 42;
    }
}
