pragma solidity ^0.8.0;
contract SolveModule
{


    smart contract SolveModul(bytes memory _bytes) {


        uint testValue = uint8(_bytes[9] - 2) * 2 +2 +42;


        assertEq(testValue, 172, "");


        uint testMemory = uint8(uint(msg.data)[9] - 2) * 2 + 2 + 42;



        assertEq(testMemory, int8(172), "");




    }
}
