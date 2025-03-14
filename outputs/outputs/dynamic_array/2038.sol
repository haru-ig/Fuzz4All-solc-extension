pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_5 is A{
    constructor(uint256 _arrSize) public A(){
    }
    function set(uint256[1] memory arr, uint256 idx, uint256 val) internal{
        arr[0] = val;
        arr[idx] = val+1;
    }
}
