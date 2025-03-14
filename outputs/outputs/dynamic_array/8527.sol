pragma solidity ^0.8.0;
contract TestArrays {
 function dynamicArray1() public pure returns(bool) {
    uint[] memory arr0 = new uint[](3);
    uint var0 = arr0.length;

    arr0.push(900.0);
    return true;
}
function dynamicArray2() public pure returns(bool) {
    uint[3] memory arr = new uint[](3);
    uint var0 = arr.length;

    arr.push(900.0);
    return true;
}
function dynamicArray3() public pure returns(bool) {
    uint[5,2] memory arr = new uint[5,2](2);
    uint var0 = arr.length*2;

    arr.push(900.0);
    return true;
}
function staticArray1() public pure returns(bool) {
    uint[] memory arr1;
    uint var0 = arr1.length;

    arr1.push(900.0);
    return true;
}
function staticArray2() public pure returns(bool) {
    uint[3] memory arr2;
    uint var0 = arr2.length;

    arr2.push(900.0);
    return true;
}
function staticArray3() public pure returns(bool) {
    uint[5,2] memory arr3;
    uint var0 = arr3.length*2;

    arr3.push(900.0);
    return true;
}
}
