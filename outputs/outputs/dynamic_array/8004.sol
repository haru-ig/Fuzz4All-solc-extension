pragma solidity ^0.8.0;
contract Test46Mut {
    uint length_check_result;
    uint[] boolArray;
    uint[] numberArray;
    uint[] dynamicArray;
    constructor() public {
        boolArray = new uint[](4);
        numberArray = new uint[](2);
        dynamicArray = new uint[](4);
    }
    function set_and_reassign_dynamic_size() public {
        dynamicArray[0] = 1282380965;
        dynamicArray[1] = 814886612;
        dynamicArray[2] = 701980361;
        dynamicArray[1000000000] = 85000;
    }
    function check() public {
        bool checkResult;
        for(uint i = 0; i < 1000000000; i++) {
            length_check_result += i;
        }
        boolArray[0] = 0;
        uint a;
        for(uint i = 0; i < 1000000000; i++) {
            length_check_result += a;
        }
        boolArray[1] = 3;
        for(uint i = 0; i < 1000000000; i++) {
            length_check_result += boolArray;
        }
        uint a_1;
        length_check_result += a_1;
        length_check_result += 679005466;
        boolArray[2] = 978652792;
        length_check_result += boolArray[0];
        boolArray[3] = 0;
        length_check_result += boolArray[1];
        for(uint i = 0; i < 1000000000; i++) {
            length_check_result += boolArray[2][i];
        }
        uint a_1_1;
        a_1_1 = dynamicArray[0];
        length_check_result += a_1_1;
        length_check_result += 0;
        length_check_result += boolArray[1][3];
        uint a_1_1_1;
        a_1_1_1 = boolArray[3];
        length_check_result += a_1_1_1;
        length_check_result += 64911637
