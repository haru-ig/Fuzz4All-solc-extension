pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_26{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[6] memory arrayThree;
    uint[3] memory subarrayOne;
    uint[4] memory subarrayTwo;
    uint[5] memory subarrayThree;
    uint[] memory arrayFour;
    uint[] memory arrayFive;
    uint[] memory arraySix;
    constructor (){
        uint[] memory subarrayOne = subarray();
        arrayTwo = subarrayOne;
        arrayFour = subarrayOne;
        arrayFive = subarrayOne;
        arraySix = subarrayOne;
        subarrayTwo = subarrayOne;
        subarrayThree = subarrayOne;
        uint[] memory subarrayOne_2 = subarrayOne;
        subarrayTwo = subarrayOne_2;
        subarrayThree = subarrayOne_2;
    }
    function subarray() public pure returns (uint[] memory) {
        return new uint[](1);
    }
}
