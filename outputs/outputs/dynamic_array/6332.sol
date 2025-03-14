pragma solidity ^0.8.0;
contract d1 {
    uint8 s1;
    uint8 s2;
    uint8 s3;
    constructor() public {
        s1 = 1;
        s2 = 2;
        s3 = 3;
    }
    function f() public {
        uint8[] memory arr = [4, 5, 6, 7];
        arr[1] = 8;
        s1 += 1;
        s2 += arr[2];
        s3 += arr[2*3];
    }
}
contract d2 {
    uint8 s1;
    uint8 s2;
    uint8 s3;
    constructor() public {
        uint8[] memory arr = [1, 2, 3, 4];
        s1 = 5;
        s2 = 6;
        s3 = 7;
        arr[2*3] = 8;
    }
    function f() public {
        uint8[] memory arr2 = [8, 7, 6, 5];
        arr2[1] = 6;
        s1 += 1;
        s2 += 2*arr[2];
        s3 += 2*2*arr[3];
    }
}
contract d3 {
    uint8 s1;
    uint8 s2;
    uint8 s3;
    constructor() public {
        uint8[] memory arr = [10, 11, 12, 13];
        s1 = 14;
        s2 = 15;
        s3 = 16;
    }
    function f() public {
        uint8[] memory arr3 = [16, 15, 14, 13];
        s1 += 10;
        s2 += 11;
        s3 += 12;
        s2 = 17;
        arr3[2] = 0;
        arr3[1] = 0;
        arr3[3] = 2;
        s1 += 20;
        s2 += 21;
        s3 += 22;
        arr3[2] = 0;
        arr3[1] = 0;
        arr3[3] = 2;
    }
}
