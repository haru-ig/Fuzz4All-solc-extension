pragma solidity ^0.8.0;
contract Test {
    uint constant testint1 = 2 ether;
    uint constant testint2 = testint1 / 2;
    uint constant testnum1 = 1000 ether;
    uint constant testnum2 = testnum1 / 2;

    uint public num;
    uint public integer;
    uint public integer2;
    uint public integer3;
    uint public integer4;
    uint public integer5;
    uint public integer6;
    uint public integer7;
    uint public integer8;
    uint[] public integerArr1;
    uint[2] public integer2_arr;
    uint public integer3_arr;
    uint public integer4_arr;
    uint public integer5_arr;
    uint public integer6_arr;
    uint public integer7_arr;
    uint public integer8_arr;
    uint[] public integerArr2;
    uint[2] public integer2_arr2;
    uint public integer3_arr2;
    uint public integer4_arr2;
    uint public integer5_arr2;
    uint public integer6_arr2;
    uint public integer7_arr2;
    uint public integer8_arr2;
    mapping (uint => bool) constant boolArr;
    mapping(uint => uint[]) onlyarr1;
    mapping(uint => uint[2]) onlyarr1_arr;
    bool public constant boolint1 = true;
    bool public constant boolint2 = testbool1;
    bool public constant boolnum1 = true;
    bool public constant boolnum2 = testbool2;

    uint constant testmax6 = 255;
    uint constant testmax8 = 1515151515151515151515151515151515151515
