pragma solidity ^0.8.0;
library ArrayExample
{
    struct ArrayExampleState
    {
        uint _min;
        uint _max;
        uint _sum;
        ArrayExampleElement[] _array;
        uint[8] _numbers;
        uint[16] _array2;
        uint[32] _array3;
        uint[32] _array4;
        uint[16] _array5;
        uint[10] _array6;
        uint[] _array7;
        uint[8] _array8;
        uint[4] _array9;
        uint[8] _array9b;
        uint _sum2;
    }

    struct ArrayExampleElement
    {
        uint _element;
        uint _element2;
    }

    function arrayExampleFunc(uint[2] memory numbers) public pure returns (uint[16]){
        ArrayExampleElement[] memory arrayOfElements = new ArrayExampleElement[](4);
        for (uint i = 0; i < 2; i++) {
            arrayOfElements[i].element = numbers[i];
            arrayOfElements[i].element2 = i * 42;
        }

        ArrayExampleElement[] storage localData = arrayOfElements;
        uint[16] memory numbers2 = new uint[](8);
        for (uint i = 0; i < 16; i++) {
            numbers2[i] = i;
        }

        ArrayExampleElement[] memory localData2 = arrayOfElements;

        uint memory min = localData2[0].element;
        uint memory max = arrayOfElements[0].element;
        uint memory sum = arrayOfElements[0].element;
        for (uint i = 1; i<4; i++) {
            if (localData2[i].element < localData2[0].element) {
                min = localData2[i].element;
            }
            if (arrayOfElements[i].element > arrayOfElements[0].element) {
                max = arrayOfElements[i].element;
            }
            sum += localData2[i].element;
        }
        return ((numbers2, min, max, sum));
    }

    function arrayExampleCalc(uint[3] memory numbers) public pure returns (uint memory, uint memory){
        ArrayExampleElement[] memory arrayOfElements = new ArrayExampleElement[](8);
        uint memory i = 0;
        for (uint j = 0; j < 3; j++) {
            if (2 & j == 0) {
                continue;
            }

            arrayOfElements[i]._element = numbers[j];
            arrayOfElements[i]._element2 = j;
            i++;
        }
        return arrayOfElements[3]._element2, arrayOfElements[1]._element2;
    }

    function arrayExampleCalc2(uint[2] memory numbers) public pure returns (uint[2], uint memory){
        ArrayExampleElement[] memory arrayOfElements = new ArrayExampleElement[](4);
        uint i = 0;
        for (uint j = 0; j < 2; j++) {
            if (2 & j == 0) {
                continue
