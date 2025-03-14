pragma solidity ^0.8.0;
contract FunctionalEquivalence_StaticallySizedArrayAssignment_3{
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[t] = val;
        arr[val] = val;
        return idx+2;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedStorageAssignment_3{
    function set(uint256[30] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        uint256 x = arr[t];
        arr[t] = val;
        arr[x] = val;
        return idx+2;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayOfArrayOfArrayOfUint256_3{
    function set(uint256[][][] storage arr, uint256 idx, uint256 val) public {
        uint256 t = arr[idx][0][0];
        uint256 x = arr[t][0][0];
        for(uint256 j=0; j<5; ++j) {
            uint256 v = arr[t][j][0];
            arr[t][j][0] = val;
            arr[x][j][0] = val;

        }
    }
}
