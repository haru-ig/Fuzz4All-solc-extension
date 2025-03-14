pragma solidity ^0.8.0;
contract NotUsingCalldataArrays {
    uint256[] private _uint256ArraysForNoReason;

    mapping(uint256 => bool) private _uint256ArraysForNoReasonForReason;

    event SetUint256ArraysForNoReason(uint256[] _uint256ArraysForNoReason);
    event SetUint256ArraysForNoReasonForReason(uint256[] _uint256ArraysForNoReasonForReason);
}
