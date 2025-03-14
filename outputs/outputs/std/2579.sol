pragma solidity ^0.8.0;
contract Array {


    uint8[1] private _booleans;
    uint[] private _uints;
    bool[] private booleans;
    uint8[] private uints;
    bytes32[] private bytes32s;
    function setbooleansTo0() public {
        _booleans[0] = 0;
        _uints[0] = 0;
        _booleans[1] = 0;
        _uints[1] = 0;
    }
    function setuintsTo0() public {
        _booleans[0] = 0;
        _uints[0] = 0;
        _booleans[1] = 0;
        _uints[1] = 0;
    }
    function getMaxElements(uint8[] memory arr) public pure returns(uint) {
        uint result = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            if (result < arr[i]) {
                result = arr[i];
            }
        }
        return result;
    }
    function getMinElements(uint8[] memory arr) public pure returns(uint) {
        uint result = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            if (result > arr[i]) {
                result = arr[i];
            }
        }
        return result;
    }
    function printUints() public pure returns(uint[]) {
        return _uints;
    }
    function printBooleans() public pure returns(uint8[]) {
        return _booleans;
    }
}
