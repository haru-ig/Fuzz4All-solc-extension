pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_4{
    uint256[] public arr;
    function test(uint256 idx, uint256 val) external {
        uint256 bIdx;
        (bIdx,) = arr[idx];
        uint256 bVal;
        (bVal,) = arr[bIdx];
        arr[idx] = val+1;
        arr[bIdx] = val-1;
        arr[bVal] = val-1;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_5{
    uint256[] public arr;
    function test(uint256 idx, uint256 val) external {
        uint256 bIdx;
        (bIdx,) = arr[idx];
        uint256 bVal;
        (bVal,) = arr[bIdx];
        arr[idx] = val+1;
        arr[bIdx] = val-1;
        arr[bVal] = val-1;
        uint256[] memory temp = new uint256[](bVal+1);
        uint256 tempIdx = 0;
        uint256 tempIdx2 = 0;
        for(uint256 i=0;i<bVal;++i){
            temp[tempIdx] = bVal - i;
            tempIdx++;
        }
        for(uint256 i=0;i<bVal;++i){
            tempIdx2+= arr[temp[i]];
        }
        for(uint256 i=tempIdx;i<bVal;++i){
            arr[temp[i]] = temp[tempIdx2+1];
            tempIdx2++;
        }
    }
}
