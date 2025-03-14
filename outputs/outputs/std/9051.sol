pragma solidity ^0.8.0;
contract ExampleClass {
    uint16[] private arr;
    uint16 x;
    uint256 y;
    uint16 xCopy;
    uint256 yCopy;
    constructor(uint16[] memory data) {
        arr = data;
        x = uint16(data[0].toUint256());
        assert(data[0].toUint256() == uint2uint16(data[0]));
        y = uint2uint16(data[1]);
    }

    function getArrAt(uint256 index) public view returns (uint256) {
        return uint16(arr[index]);
    }

    function setArrAt(uint256 index, uint16 v) public {
        arr[index] = uint2uint16(v);

    }

    function uint2uint16(uint16 source) public pure returns(uint256) {
        return uint256(source) + uint256(source>>16);
    }

    function uint2arr(uint256 source) internal pure returns(uint16[]){
        return [uint16(source), uint16(source>>16)];
    }

    function arr2uint16(uint16[] memory source) internal pure returns(uint16){
        return uint2uint16(uint256(source[0]));
    }
}
