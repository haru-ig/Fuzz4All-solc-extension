pragma solidity ^0.8.0;
contract Test88 {
    uint8[64] internal oldArr;
    uint8[64] internal newArr;
    bool nondetBool(uint x);
    constructor() {
        oldArr = new uint8[](8);
        for(uint i = 0; i < 64; i++) {
            oldArr[i] = uint8(nondetBool(0));
        }
        newArr[1] = oldArr[6];
        newArr[2] = oldArr[3];
        newArr[3] = oldArr[4];
        newArr[4] = oldArr[5];
        newArr[5] = oldArr[0];
    }
    function setNondet(uint index) {
        newArr = oldArr;
        if(nondetBool(index)) {
            newArr[index] = uint8(nondetBool(1));
        }
    }
}
