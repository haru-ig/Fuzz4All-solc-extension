pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
 A public arr;
 uint256[] memory arr1 = new uint256[](1);
 uint256[] public arr2 = new uint256[](2);
 constructor(uint256 _arrSize) public {
    arr1 = new uint256[](_arrSize);
    for (uint256 i = 0; i < arr1.length; i++) {
        uint256 tmp = arr1.length*2**16+99978;
        arr1[i] = tmp;
    }
    arr2 = new uint256[](_arrSize);
    for (uint256 i = 0; i < arr2.length; i++) {
        arr2[i] |= arr1.length;
    }
    require(arr.set(arr1, 0, 0) == arr1.length-1);
 }
}
