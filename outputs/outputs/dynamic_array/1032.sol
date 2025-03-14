pragma solidity ^0.8.0;
contract UsingCalldataArrays {
    uint256[] private _uint256ArraysForNoReason;
    mapping(uint256 => bool) private _uint256ArraysForNoReasonForReason;
    event SetUint256ArraysForNoReason(uint256[] _uint256ArraysForNoReason);
    event SetUint256ArraysForNoReasonForReason(uint256[] _uint256ArraysForNoReasonForReason);
    function setUint256ArraysForNoReason(uint256[] memory _uint256ArrForNoReason) public {
        require(msg.value == 0);
        _uint256ArraysForNoReason = _uint256ArrForNoReason;
        emit SetUint256ArraysForNoReason(_uint256ArrForNoReason);
    }
    function setUint256ArraysForNoReasonForReason(uint256[] memory _uint256ArrForNoReasonForReason) public {
        require(msg.value == 0);
        _uint256ArraysForNoReasonForReason = _uint256ArrForNoReasonForReason;
        emit SetUint256ArraysForNoReasonForReason(_uint256ArrForNoReasonForReason);
    }
}



pragma solidity ^0.8.0;
contract UsingDynamicArrays {
    uint256[] private _uint256Arrays;
    mapping(uint256 => bool) private _uint256ArraysForReason;
    uint256 _uint256ArrForReason[3][3];
    uint256 _uint256ArrForReasonForReason[3][3];
    event SetUint256Arrays(uint256[] _uint256Arrays, uint256 _uint256ArrForReason[3][3], uint256 _uint256ArrForReasonForReason[3][3]);
    event SetUint256ArraysForReason(uint256
