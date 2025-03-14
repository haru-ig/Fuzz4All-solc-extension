pragma solidity ^0.8.0;
contract Test1 {
    uint8 d;
    uint8[1,2,3] memory x;
    constructor() public {}
    function test() public {
        {
        uint8 x0 = 1;
        uint8 x1 = 2;
        uint8 x2 = 3;
        uint8 x3 = 4;
        uint8[4] memory y = [1, 2, 3, 4 ];
        uint8[2,3] memory z = [x1, x0, x2, x3];
        {
        uint8[4] memory y0 = [1, 2, 3, 4 ];
        uint8[2,3] memory z0 = [x1, x0, x2, x3];

        uint8[4] memory y02 = [1, 2, 3, 4 ];
        uint8[3] memory y23 = [3, 2, 1 ];
        uint8[3] memory y233 = [3, 2, 3 ];
        uint8[3] memory y2333 = [3, 2, 3, 3 ];

        uint8[3,3] memory y023 = [1, 2, 3 ];
        uint8[2,2,3] memory y2233 = [2, 3, 1 ];
        uint8[2,2,3] memory y22333 = [2, 3, 3 ];
        uint8[2,2,3] memory y223333 = [2, 3, 3, 3 ];

        uint8[2,2,3] memory y023 = [1, 2, 3 ];
        uint8[2,3] memory y233 = [3, 2, 1 ];
        uint8[2,3] memory y2333 = [3, 2, 3 ];
        uint8[2,3] memory y23333 = [3, 2, 3, 3 ];
        uint8[2,3] memory y233333 = [3, 2, 3, 3, 3 ];

        uint8[2,3] memory y023 = [1, 2, 3 ];
        uint8[3,3,3] memory y033333 = [1, 3, 3, 3 ];
        uint8[3,3,3] memory y3333333 = [3, 3, 3, 3, 3 ];
        y23333333
        }
        }
