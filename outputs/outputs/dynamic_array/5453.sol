pragma solidity ^0.8.0;
library TestLib {
    struct Array1 {
        uint a0;
        uint a1;
        uint a2;
        uint a3;
        uint a4;
        uint a5;
        uint a6;
        uint a7;
        uint a8;
        uint a9;
        uint a10;
    }
    function getArr(uint _i) public pure returns(uint[] memory arr) {
        arr = new uint[](1);
        arr[0] = 0x060000000000000000000000000000000000000000000000000000000000;
    }
    function setArr(uint[10] storage _arr, uint _i) public {
        _arr[_i] = 10;
    }
}
library TestLib2 {
    struct Array1 {
        uint a0;
        uint a1;
        uint a2;
        uint a3;
        uint a4;
        uint a5;
        uint a6;
        uint a7;
        uint a8;
        uint a9;
        uint a10;
    }
    function getArr(uint _i) public pure returns(bool[] memory arr) {
        bool f = false;
        arr = new bool[](1);
        arr[0] = f;
    }
    function setArr(bool[10] storage _arr, uint _i) public {
        _arr[_i] = true;
    }
}
library TestLib3 {
    struct Array1 {
        uint a0;
        uint a1;
        uint a2;
        uint a3;
        uint a4;
        uint a5;
        uint a6;
        uint a7;
        uint a8;
        uint a9;
        uint a10;
    }
    function getArr(uint _i) public pure returns(float[] memory arr) {
        float f = 0.0;
        arr = new float[](1);
        arr[0] = f;
    }
    function setArr(float[10] storage _arr, uint _i) public {
        _arr[_i] = 4;
    }
}
contract Test41 {
    event logEvent4(uint[15][1
