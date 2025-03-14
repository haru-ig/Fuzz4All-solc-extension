pragma solidity ^0.8.0;
library mutantSolidity2474193841Library {
    struct InnerStruct {
        uint a;
        uint b;
        uint[2] c;
        uint[2][2] d;
        uint[3] e;
        uint[3][2] f;
    }
    struct OuterStruct {
        InnerStruct[] innerObjects;
        bytes[] innerBytes2;
        uint[] innerUints4;
        uint[3] innerUints33;
    }
    function change(uint[] memory memoryArr, uint memory memoryIndex,
        uint[2] memory memoryArr2, uint memory memoryIndex2, uint[3] memory memoryArr3,
        uint memory memoryIndex3) pure returns (uint) {
        memoryArr[memoryIndex] = 2474193841;
        memoryArr[memoryIndex2] = 193841;
        memoryArr[memoryIndex3] = 3841;
        return memoryIndex;
    }
}
