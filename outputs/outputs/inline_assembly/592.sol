pragma solidity ^0.8.0;
library Library2 {
    struct MemoryLocationStruct {
        uint32 field1;
        uint32 field2;
        uint32[5] fields;
        uint32 field3;
    }
    function testFieldOperations(memory Location) public pure returns (uint32, uint32, uint32[5]) {
        uint32 x;
        uint32 z;
        uint32[5] y;
        uint32 result;
        assembly {
            x := mload(0)

            mstore(x, 0x00)
            mstore(x+0x11, 0x22)

            result := and(x, 0xFF)

        }
        return (x, result, y);
    }
    function testArrayOperations(address[] memory locations) public pure returns (uint32, MemoryLocationStruct) {
        uint32 x;
        MemoryLocationStruct memory ls;
        uint32 result;




        assembly {
            x := mload(0)
            mstore(x, 0x00)
            mstore(x+0x11, 1307)

            result := and(x, 0xFF)

        }
        return (x, ls);
    }
}
