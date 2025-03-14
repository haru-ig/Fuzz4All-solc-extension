pragma solidity ^0.8.0;
contract SemanticSolidityPointers5 {
    struct Struct {
        uint8 arrayLength;
        uint[] memberArray;
    }

    function test() public pure returns (Struct memory) {
        uint[] memory member1 = new uint[](1);
        uint[] memory member2 = new uint[](2);
        uint[] memory member3 = new uint[](3);
        uint[] memory member4 = new uint[](4);

        uint[] memory result = new uint[](10);
        result[0] = 1;
        result[1] = 2;
        result[2] = 3;
        result[3] = 4;
        result[4] = 5;
        result[5] = 6;
        result[6] = 7;
        result[7] = 8;
        result[8] = 9;
        result[9] = 0101020304050607080;

        Struct memory testStruct = Struct({arrayLength: 10, memberArray: result});

        return(testStruct);
    }
}
