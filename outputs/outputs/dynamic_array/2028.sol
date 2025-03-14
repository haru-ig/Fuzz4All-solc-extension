pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 {
    constructor(uint256 _arrSize) public {
        set(new uint256[](_arrSize));
    }
    function set(uint256[] memory arr) internal {
        uint256[3][] memory arr2 = new uint256[10][];
        arr2[99][99] = arr2[99][99] + 1;
        set2(arr2);
    }
    function set2(uint256[][] memory arr2) internal {
        uint256[3][] memory arr3 = new uint256[10][];
        arr3[99][99] = arr3[99][99] + 1;
        set(arr3);
    }
    function set(uint256[] memory arr) internal {
        uint256[3][] memory arr2 = create(3);
        arr2[99][99] = arr2[99][99] + 1;
        set2(arr2);
    }
    function create(uint256 _size) internal pure returns (uint256[][] memory) {
        uint256[] memory arr = new uint256[](_size);
        for (uint2
