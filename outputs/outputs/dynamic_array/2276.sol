pragma solidity ^0.8.0;

contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_56a957bf45555624435b856d90a7105c{
    uint [][] arrayOne;
    uint [][] arrayTwo;
    uint [][] arrayThree;
    uint [][] arrayFour;
    uint [][] arrayFive;

    function SemanticEquivalence_DynamicallySizedNestedArrayAssignment_56a957bf45555624435b856d90a7105c(uint [][] memory input_1, uint [][] memory input_2, uint [][] memory input_3, uint [][] memory input_4, uint [][] memory input_5, uint [][] memory input_6) public{
        if(input_1!= input_2){
            uint [][] memory temp = arrayOne;
            temp = input_1;
            arrayOne = input_2;
            arrayTwo = input_1;
            arrayThree = arrayOne;
            arrayFour = arrayOne;
            arrayFive = arrayOne;
            arraySix = temp;
        }else{
            uint [][] memory temp = input_3;
            input_3 = temp;
            uint [][] memory temp_2 = arrayOne;
            temp_2 = input_4;
            arrayFour = input_4;
            arrayOne = arrayOne;
            arrayThree = arrayOne;
            arrayFive
