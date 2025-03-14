pragma solidity ^0.8.0;
contract BetterCase12 {
    uint256 x;
    constructor(uint256 _x) {
        x = _x + 1;
    }
}
contract BetterCase13 {
    uint256 x[];
    uint8 y;
    constructor(uint256[10][10] memory _x) {
        x = _x;
        y = (uint8)(16 + (_x[2][5] >= 10)? _x[2][5] - 10 : 0);
    }
}
contract BetterCase14 {
    uint256 x;
    uint256[10] memory y;
    constructor(uint256[10] memory _x) {
        x = _x;
        {
            uint256[10][10] memory z;
            {
                z[0][1] = 1;
            }
        }
        y = _x;
    }
}
