pragma solidity ^0.8.0;
contract A {
    uint256[1] aArray;
    uint256[1000] aArray2;
    uint256[1000] bArray;

    constructor(uint256[1000] memory _aArray) {
        aArray = _aArray;
        aArray2 = new uint256[](1000);
        for(uint256 i = 0; i < aArray.length; i++) {
            aArray2[i] = 50;
        }
        bArray = aArray;
    }
}
