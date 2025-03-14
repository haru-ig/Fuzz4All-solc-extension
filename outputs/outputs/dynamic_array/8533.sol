pragma solidity ^0.8.0;
contract TestStructWithDynamicArrayOfUint256s {
    function setUint256s(StructWithNestedArrays storage structure) public {


        structure.array0[1] += 1;


        structure.array0.push(3);
        structure.array0.push(5);


        for (uint256 i = 0; i < 2; i++) {
            for (uint256 j = 0; j < 2; j++) {
                structure.nestedArrays.push(i + 1)[j + 1] += 1;
            }
        }
    }
}
