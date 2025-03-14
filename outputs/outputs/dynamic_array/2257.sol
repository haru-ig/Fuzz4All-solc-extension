pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_806Corrected{
    uint [] memory arrayOne;
    uint [] memory arrayTwo;
    uint [] memory arrayThree;
    uint [] memory arrayFour;
    uint [] memory arrayFive;
    uint [] memory arraySix;
    constructor()public{
        uint [] memory one_2 = arrayOne;
        uint [] memory two_3 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = arrayThree;
        uint [] memory three_4 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        one_2 = arrayOne;
        arrayOne = arrayTwo;
        arrayTwo = two_3;
        three_4 = arrayOne;
        arrayThree = arrayFour;
        arrayFour = arrayFive;
        arrayFive = arraySix;
        arraySix = arrayOne;
    }
}


contract SemanticEquivalence_DynamicallySizedNestedStructAssignment_4e4Corrected{
    struct arrayOne{
        uint [] secondNestedArray;
    }
    struct arrayTwo{
        uint [] secondNestedArray;
    }
    struct arrayThree{
        uint [] secondNestedArray;
    }
    struct arrayFour{
        uint [] secondNestedArray;
    }
    struct arrayFive{
        uint [] secondNestedArray;
    }
    struct arraySix{
        uint [] secondNestedArray;
    }


    struct twoArrayOne{
        uint [] secondNestedArray;
    }
    struct twoArrayTwo{
        uint [] secondNestedArray;
    }
    struct twoArrayThree{
        uint [] secondNestedArray;
    }
    struct twoArrayFour{
        uint [] secondNestedArray;
    }
    struct twoArrayFive{
        uint [] secondNestedArray;
    }
    struct twoArraySix{
        uint [] secondNestedArray;
    }

    constructor() public {
        arrayOne memory aOneField = twoArrayOne({
            secondNestedArray: this.array
