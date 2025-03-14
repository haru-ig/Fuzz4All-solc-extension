pragma solidity ^0.8.0;
contract Mutation_SolidityArrayAssignment_5{
    uint256[2] public array;
    constructor () {
        array[1] = 1;
        array[0] = 0;
    }
    function get() public view returns(uint256[] memory) {
        return array;
    }
    function setarr(uint256[2] memory arr, uint256 idx, uint256 val) public returns(uint256) {
        uint256 t = arr[idx];
        arr[idx] = val;
        return t;
    }
    function swapidx(uint256[2] memory arr, uint256 idx1, uint256 idx2) public returns(uint256) {
        uint256 t;
        t = arr[idx1]; arr[idx1] = arr[idx2]; arr[idx2] = t;
        return t;
    }
    function swapintarr(int256[2] memory arr, uint256 idx1, uint256 idx2) public returns () {
        int256 t;
        t = arr[idx1]; arr[idx1] = arr[idx2]; arr[idx2] = int256(t);
    }
}
