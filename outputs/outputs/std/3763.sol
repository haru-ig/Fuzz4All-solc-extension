pragma solidity ^0.8.0;
contract MathExample {
    uint internal _result;
}

contract Test {
    struct ArrayWithUnsignedInteger {
      uint[8] array;
    }
    mapping(uint => ArrayWithUnsignedInteger) public arrayMap;
    struct ArrayWithSignedInteger {
      int[8] array;
    }
    mapping (uint => ArrayWithSignedInteger) public arrayMapSigned;
    ArrayWithUnsignedInteger array1;
    ArrayWithUnsignedInteger array2;
    ArrayWithSignedInteger array3;
    ArrayWithSignedInteger array4;
    ArrayWithUnsignedInteger array5;
    ArrayWithSignedInteger array6;
    ArrayWithSignedInteger array7;

    function checkValues(uint input1, uint input2, uint input3, uint input4, uint input5) public {
        assert(array1.array[0] == input1 && array2.array[0] <= input2 && array3.array[0] == input3 && array4.array[0] == input4 && array5.array[0] == input5);
    }

    function checkValuesSigned(uint input1, uint input2, uint input3, uint input4, uint input5) public {
        assert(arrayMapSigned[input1].array[0] == input1 && arrayMapSigned[input2].array[0] <= input2 && arrayMapSigned[input3].array[0] == input3 && arrayMapSigned[input4].array[0] == input4 && arrayMapSigned[input5].array[0] == input5);
    }

    function test() public {
        array1.array[0] = 10;
        array1.array[1] = 20;
        array1.array[2] = 30;
        array1.array[3] = 40;
        array1.array[4] = 50;
        array1.array[5] = 60;
        array1.array[6] = 70;
        array1.array[7] = 80;
        assert(array1.array[0] == 10 && array1.array[1] == 20 && array1.array[2] == 30 && array1.array[3] == 40 && array1.array[4] == 50);
        checkValues(array1.array[0], 31, array1.array[1], 35, array1.array[2]);
        checkValuesSigned(array1.array[0], array1.array[1], 41, array1.array[2], array1.array[3]);

        array2.array[0] = 20;
        array2.array[1] = 30;
        array2.array[2] = 40;
        array2.array[3] = 50;
        array2.array[4] = 60;
        array2.array[5] = 70;
        array2.array[6] = 80;
        array2.array[7] = 90;
