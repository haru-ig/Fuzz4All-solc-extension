pragma solidity ^0.8.0;
 contract Test40 {


    uint256[][] arr2d;


    uint256[][] arr2d1;

    uint256[][][1][] arr2d2;

    uint256[][][1][][1][] arr2d3;


    constructor() payable {
    }

    function test() public {
        uint256 i;


        i = 37;
        numInts[2][1] = numInts[2][1] + [i];


        arr2d[2][1][1] = arr2d[2][1][1] + [1];




        arr2d2 = new uint256[][][1][](2);
        arr2d3 = new uint256[][][1][][1](2);
        arr2d4 = new uint256[][][](2);
        arr2d5 = new uint256[][][][](2);


        i = 56;
        numInts[2][1] = numInts[2][1] + [i];











        /* Bug: There are at least one bugs related to empty dynamic arrays in solidity:
        a) Calling the function 'push()', a calldata type was inserted into the contract.
        This can easily lead to a stack overflow, as this function is used in the 'pop
