pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ContractWithDynamicArraysIsAbleWithBiggerAmountOfData {

    bytes32 constant SOME_DATA = "SOME_DATA";

    bytes32[] calldata myArray;

    bytes32[3] calldata anotherArray;

    function fillBigArray() public {





        for (uint i = 0; i < 1024; i++) {
            myArray.push(SOME_DATA);
        }







        myArray[0] = SOME_DATA();
        myArray[1023] = 1023;










        myArray[0] = SOME_DATA();
        myArray[1023] = 378306980434996280;


        /* Note that these lines also have been replaced with the following
