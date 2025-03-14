pragma solidity ^0.8.0;
 contract Test40 {
    event logEvent4(uint[] arr);
    uint[1][1] arr;
    uint[1][1](1) arr1;
    uint256[] arr2;
    uint[1][1][1] arr3;
    uint[1] i;
    uint[1][1][1][1] arr4;
    uint[1][1][1][1](0,0) arr5;
    constructor() payable {
        int x = -3;
        arr[x][1] = arr1;
        for(uint j = 0; j < 1; j++) {
            arr2d[x][1] = arr[arr2[x][j]][arr2[arr2[x][j]][1][j]];
        }
        for(uint i = 0; i < 300; i++) {
            i += 3 * i;
            arr[x][1] = arr1;
            arr2d[x][1] = arr[arr2[x][j]][arr2[arr2[x][j]][1][j]];
            i -= 3 * i;
            arr3[x][1] = arr1;
            for(uint x = 0; x < 2; x++) arr4[x] = arr1;
            arr5 = arr;
        }
        uint y = (y / 2 - 8 + 1);
        uint z = 0x07FFFFFFFFFFFF;
        uint[16] x1 = new uint[](16);
        for(uint k = 0; j < 4; k += 2) {
            x1[1] = arr[z] - 5;
        }
        logEvent4(x1);
    }
    function() public {
    }
}
