pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment{
    function apply() internal returns(uint256) {
        uint256 tmp = uint256(get()) * 2;
        set(array, idx, tmp);
        val = 5;
        return 3;
    }
    uint256[] array;
    uint256 idx;
    uint256 val;
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        arr[cnt] = val;
        return t;
    }
    function get() internal returns(uint256) {
        uint256 tmp = uint256(get()) * 2;
        return tmp / 4;
    }
    function set2() public returns(uint256) {
        set(array,3,val);
        if (bytes(abi.encode(val)).length == 56) {
            return 1;
        } else {
            return 0;
        }
    }
    constructor() public{
        if (get()!= 5) {
            return;
        } else if (bool(array[2], 0, 4)!= true) {
            return;
        } else{
            if (!bytes(abi.encode(val)).length > 32) {
                return;
            } else {
                return;
            }
        }
    }


}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{

    uint256[] array;
    uint256 val;

    function set(uint256[] memory arr, uint256 val) internal returns(uint256) {
        return array[cnt];
    }
    function get() public returns(uint256) {
        uint256 tmp = uint256(get());
        return tmp - 2;
    }
    function set2() public returns(uint2
