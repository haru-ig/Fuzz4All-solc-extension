pragma solidity ^0.8.0;
contract Test38 {
    uint[] public arr;
    uint[6] public arr2;
    uint a;

    uint[30] public arr3;
    uint[9] public arr4;
    uint e;

    uint public a1;

    constructor() {
        arr = new uint[](33);
        arr2 = new uint[](33);
        for (uint index = 0; index < 33; ++index) {
            arr[index] = uint(0xfffffffffffffffffff);
        }
        e = 128;
    }

    function modifyArr1() public returns (uint) {
        for (uint j = 0; j < 33; j++) {
            arr[j] = 999999;
        }
    }

    function modifyArr2() public returns (uint) {
        for (uint j = 0; j < 33; j++) {
            arr2[j] = 999999;
        }
    }
    function modifyArr3() public returns (uint) {
        for (uint j = 0; j < 30; j++) {
            arr3[j] = 999999;
        }
    }
    function modifyArr4() public returns (uint) {
        for (uint j = 0; j < 9; j++) {
            arr4[j] = 999999;
        }
    }
    function getPublicE() public pure returns (uint) {
        return e;
    }
    function getPublicArr() public returns (uint[]) {
        return arr;
    }
    function getPublicArr2() public returns (uint[]) {
        return arr2;
    }
    function getPublicArr3() public returns (uint[]) {
        return arr3;
    }
    function getPublicArr4() public returns (uint[]) {
        return arr4;
    }
    function getPublicA1() public returns (uint) {
        return a1;
    }
}
