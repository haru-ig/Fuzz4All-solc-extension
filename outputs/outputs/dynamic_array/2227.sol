pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment_28{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    uint[] public arrayThree;
    uint[] public arrayFour;
    uint[] arrayfive;
    uint[] arraysix;
    constructor(uint[] memory one)public{
        uint[] memory one_2 = one;
        arrayOne = one_2;
        arrayfive = arrayOne;
        arrayfive[5] = 1;
        arraySix = arrayfive;
        uint[] memory five_3;
        arrayTwo = arrayTen;
        arrayThree = arrayOne;
        arrayfour = arrayTwo;
        arraySix[1] = 1;
    }
}

pragma solidity ^0.8.0;

contract SemanticEquivalence_CalldataArrayNestedAssignment{
	enum Test { A, B }
    struct TestStruct {
        uint f;
    }
    struct StructWithCalldata {
        calldata f;
    }
    function test(TestStruct memory s) public pure{
        StructWithCalldata memory f;
        f.f = abi.encode(Test.A);
        s = structWithCalldata(f);
        s.f.calldata();
    }
    function structWithCalldata(struct WithCalldata memory s) public pure returns (TestStruct memory){
        TestStruct memory result;
        result.f = s.f;
        return result;
    }
}

pragma solidity ^0.8.0;

contract SemanticEquivalence_CalldataIndexedArrayNestedAssignment_29{
	struct StructWithCalldata {
        address f;
        bytes32 g;
        bytes32 h;
        uint i;
        uint8 j;
        uint
