pragma solidity ^0.8.0;
contract M254{
    constructor (
            uint256 _arr1,
            uint256 _arr2,
            uint256 _arr3
    )public{
        uint256 a=10;
        uint256 b=3;
        arr1[0]=a;
        arr2[2]=b*2;
        arr3[10]=25;
    }
    address[] arr1;
    uint256[] arr2;
    uint256[] arr3;
}
