pragma solidity ^0.8.0;
contract MutatingCallsInContract {
    event SetUint256ArraysWithNullPointer(uint256[] _uint256ArraysWithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointerForReason);
    uint256[] public calldataArrayWithNullPointer;
    mapping(uint256 => bool) public calldataArrayWithNullPointerForReason;
    function mutatingCallsInContract(uint256 numberOfCalls) public {
        for(uint256 i=0; i<numberOfCalls; i++) {
            if(_uint256ArraysWithNullPointer.length < 4 + i) {
                _uint256ArraysWithNullPointer.length = 4 + i;
                emit SetUint256ArraysWithNullPointer(_uint256ArraysWithNullPointer);
            } else if(_uint256ArraysWithNullPointerForReason.length < 4 + i) {
                _uint256ArraysWithNullPointerForReason.length = 4 + i;
                emit SetUint256ArraysWithNullPointerForReason(_uint256ArraysWithNullPointerForReason);
            }
        }
    }
}
