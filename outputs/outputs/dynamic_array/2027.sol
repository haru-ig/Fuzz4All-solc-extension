pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_4 {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal {
        uint256 t = arr[idx];
        arr[idx] = val;
        arr[t] = t;
    }
}






pragma solidity ^0.8.0;
contract A{
    function set(uint256[] storage arr, uint256 idx, uint256 val) internal returns(uint256) {
        arr[idx] = val;
        return idx+1;
    }
}
