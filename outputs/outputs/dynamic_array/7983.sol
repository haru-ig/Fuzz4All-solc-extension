pragma solidity ^0.8.0;
contract Test39_2 {
    uint32[] storage uintArr;
    string[] storage strArr;
    mapping(uint256 => uint32[]) internal addressAddressArr;
    mapping(uint256 => string[]) internal addressStringArr;
    constructor(){
        uintArr = new uint32[](8);
        uintArr[12] = 10000;
        strArr = new string[](16);
        for (uint i = 0; i < strArr.length; ++i) {
            strArr[i] = "Hello";
        }
        addressAddressArr[33] = new uint32[](1);
        addressStringArr[33] = new string[](1);
        for (uint i = 0; i < addressAddressArr[33].length; ++i) {
            addressAddressArr[33][i] = 1;
        }
        for (uint i = 0; i < addressStringArr[33].length; ++i) {
            addressStringArr[33][i] = "33";
        }
    }
    function modifyArr3() public returns (uint) {
        uint arr_tmp = (uint)addressAddressArr[16];
        addressAddressArr[16] = new uint32[](3);
        addressAddressArr[19];
        if (uintArr[arr_tmp] == 0 && uintArr[16] == 0) {
            uintArr[16] = 10;
            addressAddressArr[33] = new uint32[](1);
            addressStringArr[33] = new string[](1);
            for (uint i = 0; i < addressAddressArr[33].length; ++i) {
                addressAddressArr[33][i] = 1;
            }
            for (uint i = 0; i < addressStringArr[33].length; ++i) {
                addressStringArr[33][i] = "33";
            }
        }

        uint[] storage arr_2 = uintArr;
        address[] storage addressArr3 = addressArray;
        address[] internal addressArr_2;
        for (uint i = 0; i < addressArr3
