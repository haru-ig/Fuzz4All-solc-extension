pragma solidity ^0.8.0;

contract T0F9C_call_data_array_sol {
    uint public val;
    bytes[] public empty;
    bytes4[2] public call1;
    bytes4 call1Empty;
    bytes[] emptyD;
    bytes4[2] emptyD4;
    bytes[] emptyArray;
    bytes[] emptyArray2;
    address[] addresses;




    constructor(uint _val) {
     emptyD4[0] = 0xf0f8;
     emptyD4[1] = 0xf0f8;
     emptyD[0] = 0xf0f8;
     emptyD[1] = 0xf0f8;
     emptyArray[0] = 0xf0f8;
     emptyArray[1] = 0xf0f8;
     emptyArray[2] = 0xf0f8;
     emptyArray[3] = 0xf0f8;
     emptyArray[4] = 0xf0f8;
     emptyArray2[0] = 0xf0f8;
     emptyArray2[1] = 0xf0f8;
     emptyArray2[2] = 0xf0f8;
     emptyArray2[3] = 0xf0f8;
     emptyArray2[4] = 0xf0f8;
     addresses[0] =
