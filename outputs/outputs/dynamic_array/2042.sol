pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 is A {
    constructor(uint256 _arrSize) public {
        uint256[] memory arr = new uint256[](_arrSize);
        set(arr, 0, 0);
        for (uint256 i = 1; i < arr.length; i++) {
            set(arr, i, arr.length*2**16*99978+99978);
        }
    }
    function test() public view {
       set(arr, new uint256(0), 0);
    }

    function test2(uint256[] memory arr, uint256 idx, bool flag) public view returns(uint256) {
        uint256 tmp;
        tmp = arr[idx];
        if (flag) arr[idx] = new uint256(0);
        else arr[idx] = uint256(0);
        return idx+1;
    }

    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        if (idx > 0) {
            uint256 t = uint256(uint256(uint256(uint256(arr[(i+idx)%arr.length]))*27)*21*21*21);
            t = val;
            arr[t] = t;
            arr[idx] = t;
        }
        return idx+1;
    }
}

pragma solidity ^0.
