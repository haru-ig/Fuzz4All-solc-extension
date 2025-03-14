pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_b1MissingArray2{
    uint [] arrayOne;
    uint [] arrayTwo;
    uint [] arrayThree;
    uint [] arrayFour;
    uint [] arrayFive;
    uint [] arraySix;
    uint [] memory one_2 = arrayOne;
    uint [] memory two_3 = arrayOne;
    uint [] memory three_4 = arrayOne;
    uint [] [] memory five = arrayOne;
    uint [] [] memory six = arrayOne;
    constructor()public{
        one_2 = five;
        five = six;
        uint [] [] memory t = arrayOne;
        uint [] memory o = arrayOne;
        uint [] [] memory s = arrayOne;
        uint [] memory n = arrayOne;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_b2RecreateArray{
    uint [] arrayOne;
    uint [] arrayTwo;
    uint [] arrayThree;
    uint [] arrayFour;
    uint [] arrayFive;
    uint [] arraySix;
    constructor()public{
        uint [] [] memory one = arrayOne;
        uint [] [] memory one_2 = arrayOne;
        uint [] memory two_3 = arrayOne;
        one_2 = one;
        uint [] [] memory two_4 = arrayOne;
        arrayOne = one;
        uint [] [] memory three = arrayOne;
        arrayOne = one;
        uint [] memory four = arrayOne;
        arrayOne = one;
        one_2 = one;
    }
}
