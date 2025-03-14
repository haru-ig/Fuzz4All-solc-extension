pragma solidity ^0.8.0;
contract OverridingEmergencyStop {
    event EmergencyStop();
    bool public emergencyStopped = false;
    bool public emergencyStoppedCopy;
    uint256[] private nonMutatedNonFixedArray;
    uint256[] private nonMutatedFixedArray;
    uint256 _emergencyStopCounter;
    modifier beforeEmergencyStop() {
        __EmergencyStop();
    }
    modifier preventEmergencyStop() {
        __PreventEmergencyStop();
    }
    modifier afterEmergencyStop() {
        __EmergencyStop();
        __PreventEmergencyStop();
    }
    modifier __EmergencyStop() {
        _emergencyStopCounter++;
        if (emergencyStopped) {
            revert("EmergencyStop");
        } else {
            emergencyStopped = true;
        }
        _;
    }
    modifier __PreventEmergencyStop() {
        if (emergencyStopped) {
            emergencyStopped = false;
        } else {
            emergencyStopped = emergencyStoppedCopy;
        }
        _;
    }
    constructor() public {
        _emergencyStopCounter = 0;
        nonMutatedNonFixedArray = new uint256[](3);
        for (uint256 i = 0; i < nonMutatedNonFixedArray.length; i
