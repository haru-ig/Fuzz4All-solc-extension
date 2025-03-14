pragma solidity ^0.8.0;
contract Test39 {
    address[] public arr;
    address[] internal addressArray;
    constructor(){
        arr = new address[](24);
        addressArray = new address[](24);
        for (uint index = 0; index < 24; ++index) {
            arr[index] = address(0xffffffffffffffffffffffffffffffffffff);
        }
    }
    function modifyArr1() public returns (address) {
        for (uint j = 0; j < 24; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
        return addressArray[12];
        for (uint j = 0; j < 24; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
    }
}
contract Test40 {
    struct S1 {
        uint value;
    }
    struct S2 {
        S1[] s;
    }
    struct S3 {
        S2[] ss;
    }
    address[] public arr1;
    address[] public arr2;
    S2[] public arrayOfStructs;
    constructor(){
        arrayOfStructs = new S2[](10);
        for (uint i=0; i < 10; ++i) {
            arrayOfStructs[i].s = new S1[](i + 1);
            for (uint j=0; j < i + 1; ++j){
                if (j == 0) arr1[j] = address(0xffffffff);
            }
        }
    }
    function modifyArr2() public returns (address) {
        for (uint i=0; i < 10; i++) {
            for (uint j=0; j < i + 1; ++j){
                if (j == 0) arr2[j] = address(0xffffffff);
            }
        }
        return arr1[0];
        for (uint i=0; i < 10; i++) {
            for (uint j=0; j <
