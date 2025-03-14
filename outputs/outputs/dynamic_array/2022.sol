pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedArrayAssignment_3 {
    constructor(uint256 _arrSize) public {
        uint256[][] memory arr = new uint256[2][_arrSize];
        arr[0][0] = 0;
        for (uint256 j = 0; j < arr[0].length; j++) {
            for (uint256 i = 0; i < arr[0].length; i++) {
                set_arr(arr, 0, i, j, arr.length*2**16*99978+99978);
            }
        }
    }

    function set_arr(uint256[][] memory arr, uint256 a, uint256 b, uint256 c, uint256 val) internal {
        arr[a][b] = val;
    }
}
