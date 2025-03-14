pragma solidity ^0.8.0;



contract DynamicArray {

    uint256 public arraySize;

    bytes public arrayBuffer;

    bytes calldata arrayCalldata;


    constructor() {
        arraySize = 4;
        arrayBuffer = new bytes(32);
        arrayCalldata = new bytes8(8);
    }





    function set(uint256 index, bytes memory val) public {
        arrayBuffer[index] = val;
    }

    function setCalldata(uint256 index, bytes8 memory val) public {
        arrayCalldata[index] = val;
    }
}
