pragma solidity ^0.8.0;
struct StructWithNestedArrays4 {
    uint256[3][3] array1;
    uint256[4][2] nestedArrays2;


    bytes memory[] nestedCalldata;
}

pragma solidity ^0.8.0;
struct StructWithStaticArrays {
    static uint256[4] staticArray1;
    static uint256[2][2] staticNestedArrays2;
}
