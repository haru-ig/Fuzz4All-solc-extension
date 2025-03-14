pragma solidity ^0.8.0;
contract Solidity7To1 {
    int[] public a;
    int[] public b;
    int[] memory maxA;
    int[] memory maxB;
    int[] memory prevA;
    int[] memory prevB;
    constructor() public {
        a[0] = 1;
        b[0] = 1;
        maxA[0] = a[0];
        maxB[0] = b[0];
        prevA[0] = a[0];
        prevB[0] = b[0];
    }
    function myFunction() public {
        a[0] = a[0] + b[0];
        a[0] = a[0] + a[0];
        a[0] = a[0] * a[0];
        a[0] = a[0] + a[0];
        a[0] = a[0] * a[0];
        a[0] = a[0] + a[0];
        a[0] = 3 * a[0];
        a[0] = a[0] + a[0];
        a[0] = a[0] * 2;
        a[0] = a[0] + a[0];
        maxA[0] = a[0];
        maxB[0] = b[0];
        prevA[0] = a[0];
        prevB[0] = b[0];
    }
}
