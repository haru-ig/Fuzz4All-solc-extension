pragma solidity ^0.8.0;
contract Array12x2x2_modified_solidiarity{
    uint256[4,2] constant arr = [

        [0,42],
        [42,0],
        [20,72],
        [62,11],

        [12,62],
        [10,31],
        [8,91],
        [22,109]
    ];
    uint256 arr2[2,2]= [

        [6,44],
        [64,33],

        [256,27],
        [17,8],

        [3,55],
        [23,99]
    ];
    uint256 arr3456 = 32;
    uint256[] arr1;
    uint256[] arr21;
    uint256[] arr3;
    uint256[] arr4;
    modifier Mutate_arr_5_arr_6(uint256[] memory arr1, uint256[] memory arr21, uint256[] memory arr3, uint256[] memory arr4){
        arr1; arr21; arr3; arr4;
        arr1 = arr3;
        arr21 = arr1;
        arr3 = arr21;
        arr4 = arr3;
        _;
        arr1 = arr3;
        arr21 = arr1;
        arr3 = arr21;
        arr4 = arr3;
    }
