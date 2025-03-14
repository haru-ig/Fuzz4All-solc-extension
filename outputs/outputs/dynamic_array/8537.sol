pragma solidity ^0.8.0;
contract Mutator2 {
    StructWithNestedArrays2 storage arrayVar;

    constructor() {
        arrayVar.array1[2] = 10;
        arrayVar.array1[1] = 20;
        arrayVar.array1[0] = 30;

        Mutator() {
            arrayVar.deepArray[0][0] = 40;
        }

        arrayVar.nestedArrays2[1][0] = 50;
        arrayVar.nestedArrays2[1][1] = 60;
        int100 = -70;

        Mutator() {
            arrayVar.deepArray[0][0] = 80;
        }

        arrayVar.nestedInts = 200;
    }

    int100_constructor() {
        arrayVar.array1[2] = 10;
        arrayVar.array1[1] = 20;
        arrayVar.array1[0] = 30;

        arrayVar.deepArray[0][0] = 40;
        arrayVar.nestedArrays2[1][0] = 50;
        arrayVar.nestedArrays2[1][1] = 60;
        int100 = -70;


        arrayVar.nestedInts = 200;

        arrayVar.array1[1] = 70;
    }
}
struct StructWithNestedArrays3 {
    uint256 flat;
    uint256[2] deepArray;
}
struct StructWithNestedArrays2Mut {
    uint256[2] array2;
    uint256[3] array1;
    uint256 nestedInts;
    StructWithNestedArrays2Mut nested;
}

Mutator3() {
    arrayVar.deepArray[0][0] = 40;

    arrayVar.nested.array1[2] = 10;
    arrayVar.nested.array1[1] = 20;
    arrayVar.nested.array1[0] = 30;
    arrayVar.array1[1] = 70;
}
Mutator4();
