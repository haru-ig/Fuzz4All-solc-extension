pragma solidity ^0.8.0;
contract Test38 {
    uint[64] internal arr;
    uint[64] public arr2;
    uint[678] public arr3;
    constructor() {
        arr = new uint[](8);
        uint[] memory a0;
        (uint x, a0) = createUintArray678();
        arr2 = a0;
        arr3 = new uint[](678);
    }
    function modifyArr1() public returns (uint) {
        arr[2] = uint(0xfffffffffffffffffff);
    }
    function modifyArr2() public  returns (uint) {
        arr2[2] = uint(0xfffffffffffffffffff);
    }
    function modifyArr3() public  returns (uint) {
        arr3[2] = uint(0xfffffffffffffffffff);
    }
    function createUintArray678() public returns (uint, uint[]) {
        uint[] memory memoryArray = new uint[](678);
        for (uint index = 579; index < 678; index++) {
            memoryArray[index] = uint(0xfffffffffffffffffff);
        }
        return (uint(0xfffffffffffffffffff), memoryArray);
    }
}
