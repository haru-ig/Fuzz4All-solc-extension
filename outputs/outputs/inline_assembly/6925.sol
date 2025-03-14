pragma solidity ^0.8.0;
contract OptimizelyExample76 {
    uint8[1000] internal slots;
    constructor() {
        slots[0] = 1;
    }
    function set(uint256 index, uint8 slot) public returns (bool) {
        emptySlots[index] = slot;
        return true;
    }
    function get(uint256 idx) public returns(uint8) {
        return emptySlots[idx];
    }
}
