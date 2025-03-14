pragma solidity ^0.8.0;
contract R4 {
    uint256[] arr1;
    uint256[] arr2;
    constructor() public {
        arr1 = new uint256[](3);
        arr2[0] = 0;
        arr2[1] = 0;
        arr2[2] = 0;
    }
    function f() public {
        arr1[4] = 0;
        uint256 a = arr1[4];
        arr2 = new uint256[](3);
        uint256 d = arr2[0];
    }
}
