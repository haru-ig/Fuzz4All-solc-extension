pragma solidity ^0.8.0;
import "./FunctionalEquivalence_DynamicallySizedArrayAssignment_1.sol";
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_3 {
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[(idx*2**16+val%2**15-val/2**16)/2**16][idx] = val;
    }
}

pragma solidity ^0.8.0;
contract DynamicArraysInNestedDynamicArrays_1 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr; arr[0] = 0;
        arr[(arr.length-1)*4+2] = 0;
        for (uint256 i = 0; i < arr.length; i++) {
            set(arr, i, arr.length*2-2);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        arr[(idx*2+val)[arr.length-(idx%2)+(idx%2+val/2-1)]] = val;
    }
}
