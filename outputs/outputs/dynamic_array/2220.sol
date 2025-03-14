pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_28{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] memory arrayFive_2;
    uint[] memory empty;
    uint[] memory empty_2;
    bool initialized = false;
    constructor()public{
        arrayFive_2 = new uint[](4);
        arrayFive_2[1] = 2;
        arrayTwo = new uint[](null);
        arrayFive = new uint[](null);
        empty_2 = new uint[](4);
        arrayFour = new uint[](4);
    }
    function create_array()public{
        uint[] memory three_1 = new uint[](4);
        three_1[1] = 3;
        arrayFive = arrayFive_2;
        empty_2 = arrayTwo;
        arrayFive_2 = empty;
        arrayTwo[1] = arrayTwo[1];
        arrayOne = empty_2;
        empty_2 = new uint[](7);
        arrayFour = zero_uint_4;
        arrayOne = new uint[][](40000);
        uint[] memory four_1 = new uint[](4);
        four_1[1] = 4;
        arrayThree = three_1;
        initialized = isInitialized();
        return arrayOne;
    }
    function isInitialized()public view returns (bool){
        return initialized;
    }
    function emptyArrayOne() public view returns (uint[] memory){
        return arrayOne;
    }
}
