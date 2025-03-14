pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
    uint constant A = 0x6666666666666666666666666666666666667;
    uint constant B = 0x66666666666666666666666666666666667;
    uint constant C = 0xffffffffffffff0000000000000000000000000000;
    uint constant D = 0xfffffffffffffffffffffff8;
    uint constant E = 0xfffffffffffffffffffffffc;

    uint[] memory numbers;
    uint[16] memory counters;
    uint[4] memory numbers_i;
    uint[32] memory counters_i;

    uint constant LEN_ARR = 1;
    uint constant LEN_ARRAY = 5;

    uint constant C_LEN_ARR = 1;
    uint constant C_LEN_ARRAY = 1;
    uint constant C_ARRAY_LEN = 1;
    uint constant C_ARRAY_LEN_2 = 3;
    uint constant C_ARRAY_LEN_3 = 5;
    uint constant C_ARRAY_LEN_4 = 1;
    uint constant C_ARRAY_LEN_5 = 5;
