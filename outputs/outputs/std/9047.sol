pragma solidity ^0.8.0;
contract ExampleClass {
    uint256[] private arr;
    constructor (var data) {
        arr = data;
    }
    function getArrAt(uint256 index) public view pure returns (uint256) {

        return uint2uint16(arr[index]);
    }
    function setArrAt(uint256 index, var val) public {
        arr[index] = uint2uint16(val);
    }
    function uint2uint16(uint256 source) public pure returns (uint16) {

        uint256 dividend = source / uint2uint16(2**15);
        uint256 modulus = source % uint2uint16(2**15);
        return uint16(divmod(dividend, uint2uint16(2**15))[0]) + uint16(dividend / uint2uint16(2**15));
    }
}
