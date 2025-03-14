pragma solidity ^0.8.0;
contract Mutater3_2 {
    address externalCaller;
    address externalAddress;
    constructor(address _externalCaller) {
        externalCaller = _externalCaller;
    }
    function fallback() external pure {
        externalAddress = msg.sender;
    }
    function setAddress(address _externalAddress) public {
        externalAddress = _externalAddress;
    }
}
