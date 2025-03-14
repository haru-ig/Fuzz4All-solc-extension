pragma solidity ^0.8.0;
contract Test37 {
    uint[] public arr;
    uint[] internal arr2;
    constructor(){
        arr = new uint[](33);
        arr2 = new uint[](33);
        for (uint index = 0; index < 33; ++index) {
            arr[index] = uint(0xfffffffffffffffffff);
        }
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
}
