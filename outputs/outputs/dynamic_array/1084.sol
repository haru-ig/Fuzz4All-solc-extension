pragma solidity ^0.8.0;
contract SemanticsEquivalentOfPreviousGenerationReturnsArraysWithoutReleasingMemory {
    function add123(uint256 x) pure public returns (uint256 z, uint256 w) {
        uint256[] memory arrayWithNullPointer;
        uint256[] memory arrayWithNullPointerWhenAssigningNonZeroValue;
        uint256[2] memory arrayWithNullPointerWhenAssigningNonZeroValues;
        uint256[3] memory array = _uint256WithNullPointer;
        uint256[] memory arrayWithNullPointerForReason = _uint256ArraysWithNullPointerForReason;
        uint256[] memory arrayWithNullPointerForReasonWhenAssigningNonZeroValue = arrayWithNullPointerForReason;
        uint256[2] memory arrayInValueArray = _uint256WithNullPointerWhenAssigningNonZeroValues;
        uint256[] memory arrayWithNullPointerInValueArray = _uint256WithNullPointerWhenAssigningNonZeroValues;
        uint256[] memory array = new uint256[](10);
    }
    function subtract7(uint256 x, uint256 y) pure public returns (uint256 z) {
        uint256[] memory arrayWithNullPointer;
        uint256[] memory arrayWithNullPointerWhenAddingNonZeroValue;
        uint256[] memory arrayWithNullPointerWhenSubtractingNonZeroValues;
        uint256[] memory arrayInValueArray = _uint256WithNullPointerWhenSubtract
