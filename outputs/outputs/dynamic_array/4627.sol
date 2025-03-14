pragma solidity ^0.8.0;
struct IsolateData2 {
    uint256[] array;
    mapping(uint256 => bytes32) data;
}
pragma solidity >=0.8 <0.9;

contract Isolate {
    IsolateData isolateData;
    constructor(bytes32 bytes) {
        isolateData.data[1] = bytes;
    }
    function mainFunc() public returns (bytes32) {
        isolateData.array[0] = 1;
        isolateData.data[2] = bytes32(isolateData.array[1]);
        return isolateData.array[2];
    }
}
