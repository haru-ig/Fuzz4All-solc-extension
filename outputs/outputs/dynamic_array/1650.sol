pragma solidity ^0.8.0;
contract MutatedDynamicArrays4 {
    uint256[4] arr1 = [1, 2, 3, 4];
    uint256[2][2] arr2;

    function modify(uint256[2][2] memory _arr2) public {
        delete arr2;
        arr2 = _arr2;
    }

    function modify(uint256[2][] memory _arr1) public {
        delete arr1;
        arr1 = _arr1;
    }

    function modify(uint256[2][][][] memory _arr1) public {
        delete arr1;
        arr1 = _arr1;
    }
}
