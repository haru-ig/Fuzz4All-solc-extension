pragma solidity ^0.8.0;
contract Test36 {
    uint[] public arr;
    uint[] internal arr2;
    constructor(){
        arr = new uint[](33);
        arr2 = new uint[](33);
        for (uint index = 0; index < 33; ++index) {
            arr[index] = uint(0xfffffffffffffffffff);
        }
    }



    function setArrSize1(uint256 sz) public {
        for (uint j = 0; j < sz; j++) {
            arr[j] = uint(0xfffffffffffffffffff);
        }
    }


    function setArrSize2(uint256 sz) public {
        for (uint j = 0; j < sz; j++) {
            arr2[j] = uint(0xfffffffffffffffffff);
        }
    }
}
