pragma solidity ^0.8.0;
contract TestMutator {
    uint intVal;
    uint16 uintVal;
    address contractAddr;
    address owner;
    constructor(uint _intVal) {
        intVal = _intVal;
    }
    function set(address _contractAddr, uint _uintVal) private returns (uint40) {
        contractAddr = _contractAddr;
        uintVal = _uintVal;
        owner = msg.sender;
        uint40 _return = intVal + uintVal;
        return _return;
    }
}
