pragma solidity ^0.8.0;
contract g {
    event c;
    constructor () public {
    }
}

function getAddress(address accountAddress) internal pure returns(address) {
    mapping(address => bool) internal notInSystemState;
    if (accountAddress == 0x0) {
        return 0x0;
    }

    notInSystemState[accountAddress] = true;
    return accountAddress;
}
