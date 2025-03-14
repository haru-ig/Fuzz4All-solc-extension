pragma solidity ^0.8.0;
contract Array {
    uint32[] arr;
    address public admin;
    constructor() {
        admin = 0x130532a42920a011959c0bb755f555c4c6170c86;
        arr.push(0x2);
        arr.push(0x2);
        arr.push(0x1);
        arr.push(0x0);
        arr.push(0x0);
    }
    function min(uint32[] calldata data) private returns (uint32 result) {
        uint32 minData = data[0];
        for (uint256 i = 1; i < data.length; i++) {
            if (data[i] < minData) {
                minData = data[i];
            }
        }
        return minData;
    }
    function max(uint32[] calldata data) private returns (uint32 result) {
        uint32 maxData = data[0];
        for (uint256 i = 1; i < data.length; i++) {
            if (data[i] > maxData) {
                maxData = data[i];
            }
        }
        return maxData;
    }
    function sum(uint32[] calldata data) private view returns (uint32 result) {
        result = data[0];
        for (uint256 i = 1; i < data.length; i++) {
            result += data[i];
        }
    }
    function set(uint32 idx, uint32 data) internal {
        require(idx <= arr.length && idx >= 0, "index out of bounds");
        arr[idx] = data;
    }
    function get(uint32 idx) internal view returns (uint32 data) {
        require(idx < arr.length, "index out of bounds");
        return arr[idx];
    }
    function sort(uint32[] calldata data) internal {
        for (uint256 i = 0; i < data.length / 2; i++) {
            uint32 temp0 = data[i];
            uint32 swap0 = data[i + data.length / 2];
            data[i] = swap0;
            data[i + data.length / 2] = temp0;
        }
    }
    function push(uint32 data) public {
        arr.push(data);
    }
    function remove(uint32 idx) public {
        require(idx < arr.length, "index out of bounds");
        uint32 storedArray = arr[idx];
        arr.pop();
        arr[idx] = 0xDEADBEEFFEEDBAAD;
        selfdestruct(admin);
        return storedArray;
    }
}
/* Please create a program for each of: Solidity's built-in bool and uint types
