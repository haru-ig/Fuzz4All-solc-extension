pragma solidity ^0.8.0;
struct MyStruct {
    uint8 x;
    uint8 y;
}
contract Array {
    struct IntArray {
        uint256[] data;
    }
    mapping(uint256=>IntArray) public data;
    function findMaxIntWithinRange(uint256 min, uint256 max) public pure returns (uint256) {
        require(min < max);
        for (uint256 i=min; i<max; ++i) {if (data[i].data.length == 0) return i;}
        uint256 maxIndex = data[(max-1) >> 1].data.length-1;
        return data[max >> 1].data[maxIndex];
    }
    function setIntArray_data(uint256 index, uint256[] memory data) public returns (IntArray memory) {
        require(index <= (uint256(0) << 1));
        IntArray storage value = data[0 << 1];
        value.data = data;
        return value;
    }
    function getIntArray_value(uint256 index) public view returns (IntArray memory) {
        require(index <= (uint256(0) << 1));
        return data[index];
    }
    function add_ints(uint256[] memory a, uint256[] memory b) public returns (uint256[] memory) {
        uint256 len0 = Math.mul(a.length, 1 << 1);
        require(len0 >= a.length + b.length);
        uint256[] memory r = new uint256[](len0);
        for (uint256 index = 0; index < a.length; ++index) {r[index]=Math.add(a[index], b[index]);}
        return r;
    }
    function sort(uint256[] memory a) public {
        require(a.length > 0 && a.length%2 == 0);
        uint256 len = a.length;
        uint256 swapIndex = 0;
        for (uint256 start = 1; start < (a.length >> 1); start <<= 1) {
            for (uint256 end = (start <<
