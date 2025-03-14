pragma solidity ^0.8.0;
contract Test32 {
    uint[] public dynArr;
    address[] public dynArr2;
    address[] public dynArr3;
    function Test32() public {
        dynArr[5] = 5;
        dynArr2[5] = 6;
    }
    function addTest() public {
        dynArr3[5] = '0x6c6f6261'.decodeAddress();
    }
}
