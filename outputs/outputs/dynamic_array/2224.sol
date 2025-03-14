pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_28 {

    uint[] public immutable originalArray1;
    uint[] public immutable originalArray2;
    uint[] public immutable originalArray3;
    uint[] public immutable originalArray4 = new uint[](500);
    uint[] originalArray5;
    uint[] immutable originalArray6;

    struct Value{
        uint value;
    }
    uint[] public newArray1;
    uint[] public newArray2;
    uint[][] public arrayOfArrays1;





    function constructor() public {
        originalArray1 = new uint[](1);
        originalArray2 = new uint[](2);
        originalArray3 = new uint[](3);
        originalArray1[0] = 1;
        originalArray2[1] = 2;
        originalArray3[2] = 3;
        originalArray5 = new uint[](5);
       originalArray5[0] = 1;
        originalArray5[1] = 2;
        originalArray5[2] = 3;
        originalArray5[3] = 4;
        originalArray5[4] = 5;
    }


    constructor(uint value) public{

    }
}
