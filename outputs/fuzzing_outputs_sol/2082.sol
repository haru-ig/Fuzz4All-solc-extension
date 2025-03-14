pragma solidity ^0.8.0;
contract Mutater5Fallback {
    constructor(address _address) {
        returnAddress = _address;
        callResult = 0;
    }
     function setCallResult(uint _value) public view returns (uint) {
        callResult = _value;
        return EtherTransfer(value+80000);
    }
    address public returnAddress;
    uint public callResult;
}
