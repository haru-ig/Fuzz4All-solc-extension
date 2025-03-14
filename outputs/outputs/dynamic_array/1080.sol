pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithNullPointersAsElements {
    function add123(uint256 x) public pure returns (uint256 i, uint256 j, uint256 z) {
        _validateElementsInNullPointerFields();
        i = x + 123;
        j = x + 123;
        z = i + j;
        return (i, j, z);
    }

    function subtract7(uint256 x) public pure returns (uint256 i, uint256 j, uint256 z) {
        _validateElementsInNullPointerFields();
        i = x + 7;
        j = x - 7;
        z = i - j;
        return (i, j, z);
    }

    function addAndSubtract7(uint256 x) public pure returns (uint256 i, uint256 j, uint256 z) {
        _validateElementsInNullPointerFields();
        (i, j) = add123(x);
        z = subtract7(i);
        return (i, j, z);
    }


    function _validateElementsInNullPointerFields() private view {
        (uint256[] memory _null) = uint256ArraysWithNullPointerForReason;
        assert(_null.length == 3);
        (uint256[3] memory _array) = uint256_storageAccess(0);
        _array[null] = 7;
        assert(_array[null] == 7);
        (uint256[3] memory _array2) = uint256_storage
