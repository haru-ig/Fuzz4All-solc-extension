pragma solidity ^0.8.0;
contract CanUseCalldataArray {
    uint256[] internal _uint256ArraysForNoReasonInternal;
    mapping(uint256 => bool) internal _uint256ArraysForNoReasonInternalForReason;
    event SetUint256ArraysForNoReasonInternal(uint256[] internal _uint256ArraysForNoReasonInternal);
    event SetUint256ArraysForNoReasonInternalForReason(uint256[] internal _uint256ArraysForNoReasonInternalForReason);
}
