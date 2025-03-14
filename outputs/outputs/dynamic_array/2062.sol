pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicAllocatedMemoryAssignment_3{
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 a = (arr.length - idx);
        uint256 b = 3**256;
        uint256[] memory t = new uint256[](a+b);
        for(uint256 i=0; i <= a; ++i) {
            t[i] = arr[i];
        }
        uint256 c = arr[idx];
        uint256 d = arr[idx] + arr[1];
        uint256 e = arr[idx] + arr[1];
        uint256 f = c + arr[1];
        uint256 g = c + arr[1];
        set(t, idx, val);
        set(t, 2*a, val);
        set(t, a, val);
        set(t, b-1, val);
        set(t, a+1, val);
        set(t, b+val, val);
        arr[idx] = val;
        return val;
    }
}
