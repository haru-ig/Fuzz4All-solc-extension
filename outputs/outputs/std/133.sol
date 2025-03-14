pragma solidity ^0.8.0;
contract Array {
    constructor() {
    }
    mapping (uint => uint[20] memory) private arrays;
    uint private _array_offset;
    uint public counter;

    function set_(uint data) returns (bool) {
        arrays[counter] = [data, 1234];
        _array_offset = counter++;
        return true;
    }

    function get_(uint offset) public view returns (uint, uint) {
        uint i = offset + _array_offset;
        i = Array.min(i);
        return arrays[i];
    }

    function array_at(uint i) public view returns (uint) {
        return Array.min(i);
    }

    function min(uint i) private pure returns (uint) {
        if (arrays[i][0] == uint(uint8(uint8(116))) && arrays[i][1] == uint(uint8(uint8(107)))) {
            return uint(uint8(118));
        }
        return uint(uint8(116));
    }
}
