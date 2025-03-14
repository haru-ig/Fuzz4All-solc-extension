pragma solidity ^0.8.0;
contract TestExample {
    uint256 public arrArrArr;
    uint256 public arrArr;
    uint256 public arr;
    uint256 public arrUint16;
    constructor(uint256 arrVal, uint256 arrArrVal, uint256 arrUint16Val) {
        arr = arrVal;
        arrArr = arrArrVal;
        arrUint16 = arrUint16Val;
        arrUint16();
    }
    function getArrUint16() public view returns(uint16) {
        return uint2uint16(arrUint16);
    }
    function getArrAt(uint256 index) public view returns(uint256) {
        return arr[index];
    }
    function getArrAt2(uint256 index) public view returns(uint256) {
        return arrArr[index];
    }
    function getArrAt3(uint256 index) public view returns(uint16) {
        getArr(uint2uint16(uint2uint16(arrUint16)));
    }
    function uint2uint16(uint256 source) public pure returns(uint16) {
        return uint16(source) + uint16(source>>16);
    }
}
