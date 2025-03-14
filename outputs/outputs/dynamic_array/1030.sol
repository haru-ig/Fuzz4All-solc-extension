pragma solidity ^0.8.0;
contract MutatingArrays {
    uint256[] private _uint256ArraysForNoReason;
    mapping(uint256 => bool) private _uint256ArraysForNoReasonForReason;
    event SetUint256ArraysForNoReason(uint256[] _uint256ArraysForNoReason);
    event SetUint256ArraysForNoReasonForReason(uint256[] _uint256ArraysForNoReasonForReason);
    for (uint i = 0; i < 4; i++)
        _uint256ArraysForNoReason.push(uint256(i));
}

pragma solidity ^0.8.0;
contract DynamicArraysTest {
    uint256[] private _uint256ArraysForNoReason;
    mapping(uint256 => bool) private _uint256ArraysForNoReasonForReason;
    event SetUint256ArraysForNoReason(uint256[] _uint256ArraysForNoReason);
    event SetUint256ArraysForNoReasonForReason(uint256[] _uint256ArraysForNoReasonForReason);
    constructor () {
        _uint256ArraysForNoReason.push(uint256(1));
        _uint256ArraysForNoReasonForReason.push(false);
    }
    function functionWhichWillMutateTheDynamicallyAllocatedSlot() public {
        uint256[] memory notUsingTheseArrays;
        mapping(uint256 => bool) memory uint256ArraysForNoReasonForReason;
        _uint256ArraysForNoReasonForReason.push(_uint256ArraysForNoReason.length-1 > 1);
        _uint256ArraysForNoReason.push(uint256(2));
        _uint256ArraysForNoReason.push(uint256(3));
        _uint256ArraysForNoReasonForReason.push(false);
        uint256 size = _uint256ArraysForNoReason.length
