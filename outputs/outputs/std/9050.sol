pragma solidity ^0.8.0;
contract ExampleClass {
    uint256[] private arr;
    constructor(uint16 uint16) {
        uint256 data = uint2uint16(uint16);
        arr = new uint256[](data);
    }
    function getArrAt(uint256 index) public view returns (uint16) {
        return uint2uint16(arr[index]) + uint16(arr[index>>16]);
    }
    function setArrAt(uint256 index, uint16 val) public {
        arr[index] = uint2uint16(val) + uint16(val>>16);
    }
}
contract ConvertToUint16 {
    ExampleClass ec;
    constructor(ExampleClass x) {
        ec = x;
    }
    function uint16ToUint256(uint16 x) public view returns (uint256) {
        return uint2uint16(x) + uint2uint16(x>>16);
    }
    function uint256To16(uint256 x) public view returns (uint16) {
        uint16 lo = (uint2uint16(x) >> 16) + uint16(x>>16);
        uint256 hi = uint2uint16(x) + uint16(x>>16);
        if (hi < lo) (hi, lo) = (lo, hi);
        return lo;
    }
    function uintTo16(uint256 x) public view onlyOwner {
        uint16 lo = (uint2uint16(x) >> 16);
        uint256 hi = uint2uint16(x) + uint16(x>>16);
        uint16 upper = (hi!= x);
        if (hi < lo) (hi, lo) = (lo, hi);
        return upper? lo : hi;
    }
    function uint16ToUint256(uint16 x) public view onlyOwner {
        if (x < 2 ** 15) return uint256(x);
        if (2 == x) x >>= 1;
        uint256 hi = uint2uint16(x);
        uint256 lo = uint2uint16(x>>16);
        uint256 high = x < 2**15;
        if (lo!= 0) {
            lo >>= 1;
            lo |= hi;
            lo <<= 1;
        }
        return high? lo : uint
