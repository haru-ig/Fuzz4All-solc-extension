pragma solidity ^0.8.0;
contract Test38 {
    address[] public arr;
    address[] internal arr2;
    constructor(){
        arr = new address[](33);
        arr2 = new address[](33);
        for (uint index = 0; index < 33; ++index) {
            arr[index] = address(uint(0xfffffffffffffffffff));
        }
    }
    function modifyArr1() public returns (address) {
        for (uint j = 0; j < 33; j++) {
            arr[j] = address(uint(0x0000000000000000000000000000000000000000));
        }
    }
    function modifyArr2() public returns (address) {
        for (uint j = 0; j < 33; j++) {
            arr2[j] = address(uint(0x000000000000000000000000000000000000000));
        }
    }
}
