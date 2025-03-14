pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27d{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] public arrayFive;
    uint[] arraySix;
    constructor(uint[] memory one)public{
        uint[] memory one_2 = one;
        uint[] memory two_3 = one_2;
        arrayOne = one_2;
        arrayTwo = two_3;
        uint[] memory three_4 = one_2;
        uint[] memory four_5 = one_2;
        uint[] memory five_6 = one_2;
        arrayOne = one_2;
        arrayTwo = two_3;
        arrayThree = three_4;
        arrayFour = four_5;
        arrayFive = five_6;
        arraySix = one_2;
    }
    function getArray()public view returns(uint[] memory){
        return (arrayOne);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_27e{
    function getArray()public view returns(uint[] memory){
        return (arrayOne);
    }
}
/* PLEASE NOTE: You can use the function `getArray`  (provided by the contract in above examples) to test whether the dynamic arrays are created correctly and if they hold the same values before calling the `setArray` function. Please run both tests with the same test input. Do not change the
