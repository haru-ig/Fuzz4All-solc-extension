pragma solidity ^0.8.0;
contract ExampleClass {
    uint256 constant ONE uint256 = 1;
    uint16 constant ONE uint16 = 1;
    uint16 maxVal uint16 = 0xffff;
    uint256[] memory arr = new uint256[](maxVal);
    constructor(uint16[] memory data) {
        for(uint16 i; i < uint16(data.length); i++) {
            arr[uint16(data[i])] = ONE;
        }
    }
    function getArrAt(uint256 index) public view returns (uint16) {
        return uint2uint16(arr[index]);
    }
    function setArrAt(uint256 index, uint256 val) public {
        return;
    }
    function uint2uint16(uint256 source) public pure returns(uint16) {
        return uint16(source) + uint16(source>>16);
    }
}
