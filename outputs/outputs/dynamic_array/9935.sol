pragma solidity ^0.8.0;

contract SemanticTest {
    SemanticTest_v1 public semanticTest;
    SemanticTest_v2 public semanticTest2;
    constructor (SemanticTest_v1 s, SemanticTest_v2 s2)public {
        semanticTest = s;
        semanticTest2 = s2;
    }
    function getSemantics() public pure {
        uint128 array128 = uint128(semanticTest2.myArray);
        uint64 array64 = uint64(semanticTest2.myArray);
        uint256 array256 = uint256(semanticTest2.myArray);
        uint32 array32 = uint32(semanticTest2.myArray);
        uint56 array56 = uint56(semanticTest2.myArray);
        uint16 array16 = uint16(semanticTest2.myArray);
        uint8 array8 = uint8(semanticTest2.myArray);
        uint array = uint(semanticTest2.myArray);
        uint256 array256_1 = uint256(semanticTest.myArray);
        uint array_1 = uint(semanticTest.myArray);
    }
