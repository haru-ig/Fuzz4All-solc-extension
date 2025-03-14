pragma solidity ^0.8.0;
import "./StructWithNestedArrays.sol";
struct StaticNestedStruct {
    uint[3] array1;
}
contract ContractWithDynamicArrays {
    function initialize(StaticNestedStruct memory dynamicMemory) public {
         dynamicMemory.array1 = [1,2,3];
    }

    StructWithNestedArrays memory dynamicStorage;
    struct AStructWithDynamicInits {
        uint256 length;
        uint256[2] array;
    }
    mapping (uint256 => AStructWithDynamicInits) arrayMapping;
    mapping (uint32 => StructWithNestedArrays) structMapping;
    StructWithNestedArrays memory complexStruct;
    function contractsWithArrays(int z) public {
        StructWithNestedArrays memory nestedStruct = StructWithNestedArrays({ array1: [0,1234,0] });
        complexStruct.array1 = nestedStruct.array1;
        complexStruct.nestedInts[0] = nestedStruct.array1[1];
 	complexStruct = nestedStruct;
    }
    function contractsWithDynamicMemory() public {
        arrayMapping[1] = AStructWithDynamicInits({ array: [0,1,1] });
        structMapping[2] = StructWithNestedArrays({ array1: [0,1,1] });
        arrayMapping[3] = AStructWithDynamicInits({ array: [0,1] });
        complexStruct.array1 = structMapping[2].array1;
        arrayMapping[4] = AStructWithDynamicInits({ array: [0] });
    }
    function contractsWithNonExistingMapping() public {
        for (uint256 i = 0; i < 2; i++) {
            uint32 index = uint32(i);
            arrayMapping[index] = AStructWithDynamicInits({ array: [0] });
        }
        arrayMapping[5] = AStructWithDynamicInits({});
    }
    function contractsWithEmptyArrays() public {
        for (uint256 i = 0; i < 3; i++) {
            arrayMapping[i] = AStructWithDynamicInits({ array: [5,5] });
        }
        arrayMapping[3] = AStructWithDynamicInits({});
    }
    function contractsWithOverflowingArrays() public {
        for (uint256 i = 0; i < 123456; i++) {
            arrayMapping[i] = AStructWithDynamicInits({ array: [1,1] });
        }
        for (uint256 i = 0; i < 123456; i
