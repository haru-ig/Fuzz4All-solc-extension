pragma solidity ^0.8.0;
contract Convert_11 {
    uint256 bigNum1;

    address payable owner;
    uint256 gas;

    modifier gasEmergencySafe {
        emit GasEmergencyRequested(address(this), gasUsed());
        _;
    }

    constructor(uint256 inBigNum1) {
        uint256 r;
        assembly {
            r := mload(0x40)
        }
        gas = r;
        bigNum1 = inBigNum1;
    }

    function emitGasEmergencyRequested(address owner_, uint256 gas_) public {
        emit GasEmergencyRequested(owner_, gas_);
    }

    function GasEmergencyRequested(address owner_, uint256 gas_) public view returns (uint256 gas_) {
        gas_ = gas_;
    }
}
