pragma solidity ^0.8.0;
contract MutatedGeneration8 {
    uint256[230] public nonMutatedX;
    function g(uint256 z) public {
        nonMutatedX[3] = nonMutatedX[3]*nonMutatedX[4];
    }
}
contract MutatedGeneration9 {
    uint256[230] public nonMutatedX[7];
    function g() public {
        nonMutatedX[5] = nonMutatedX[5]*nonMutatedX[6];
    }
}
contract MutatedGeneration10 {
    uint256[230] public nonMutatedX;
    uint256 public nonMutatedY;
    function g(uint256[] memory xs, uint256 sX, uint256 sY) public {
        uint256 x = sX;
        for (uint256 j; j <= 30; j++) {
            x = x*sX;
            x += sX;
        }
        nonMutatedX[0] = x;
        uint256 y = sY;
        for (uint256 i; i < 30; i++) {
            y = y*sY;
            y += sY;
        }
        nonMutatedY = y + (x * 0.04251095317762995e95);
        y = sY;
        for (uint256 i_0 = 0; i_0 <= 59; i_0++) {
            uint256 temp = 0.5*(y - sY);
            y += sY;
            x = x + (0.5 * (y + (temp * sX)));
            nonMutatedX[i_0] += sX;
        }
        nonMutatedX[5] = nonMutatedX[5]*nonMutatedY;
        nonMutatedX[6] = nonMutatedX[6]*nonMutatedY;
    }
}
