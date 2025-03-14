pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_7{
    uint256[] public array;
    uint256 idx;
    bool bidx;
    address addr;
    constructor() public {
        bidx = true;
        address a = address(this);
        arr[idx] = a;
        addr = a;
        array[bidx] = addr;
        idx = 0;
    }
    function get() internal returns(uint256[]) {
        uint256[] memory r;
        if (bidx){
            r = new uint256[](2);
            r[0] = array[bidx];
            r[1] = array[idx];
            bidx = false;
            addr = addr ^ 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
            array[idx] = 0;
            array[idx] = 0;
            idx = 0;
        } else {
            r = new uint256[](2);
            r[0] = array[idx];
            r[1] = array[0];
            idx = 1;
        }
        return r;
    }
    function set() internal {
        uint256 t = array[0];
        array[0] = 0;
        array[0] = 0;
        array[0] = 0;
        array[0] = 0;
        array[0] = array[0];
        array[0]
