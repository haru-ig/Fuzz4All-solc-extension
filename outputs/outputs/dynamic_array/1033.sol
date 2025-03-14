pragma solidity ^0.8.0;
contract UsingCalldataArrays {
    uint256[] private _uint256ArraysWithNullPointerForNoReason;
    mapping(uint256 => bool) private _uint256ArraysWithNullPointerForNoReasonForReason;
    event SetUint256ArraysWithNullPointerForNoReason(uint256[] _uint256ArraysWithNullPointerForNoReason);
    event SetUint256ArraysWithNullPointerForNoReasonForReason(uint256[] _uint256ArraysWithNullPointerForNoReasonForReason);
}
