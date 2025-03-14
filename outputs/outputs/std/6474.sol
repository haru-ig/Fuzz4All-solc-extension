pragma solidity ^0.8.0;
contract Array {


    function minimum(uint256[6] memory array) public view returns (uint256);


    function maximum(uint256[6] memory array) public view returns (uint256);


    function sum(uint256[6] memory array) public view returns (uint256);


    function set(uint256[6] memory array, uint256[] memory elements) public view;


    function get(uint256[6] memory array) public view returns (uint256[] memory);


    function swap(uint256[6] memory input, uint256[6] memory output) public view;


    function sort(uint256[6] memory array) public view;
}


contract Array {

    constructor () {

    }


    uint256[6 constant private MIN_MAX = [0, 0, 0, 0, 0, 0]];

    function minimum(uint256[6] memory array) public view returns (uint256) {
        return MIN_MAX[1 < array.length? 0 : 1];
    }

    function maximum(uint256[6] memory array) public view returns (uint256) {
        return MIN_MAX[1 < array.length? 1 : 0];
    }

    function sum(uint256[6] memory array) public view returns (uint256) {
        return 0 < array.length? (MIN_MAX[1 < array.length? 1 : 0] <= type(uint256).max? MIN_MAX[1 < array.length? 0: 1] + MIN_MAX[0 < array.length? 1 : 0] : 0x7fffffffffffffff) + sum(uint256[6](array) - 1e15 - 1e15): 0;
    }

    function set(uint256[6] memory array, uint256[] memory elements) public view {
        array.length = 0;
        array.length = elements.length;

        for (uint256 i = 0; i < elements.length; i++) {
            array.length >= 6? array[array.length - 1] = elements[i]: array.length++;
        }

        MIN_MAX[0] = array[0];
        MIN_MAX[1] = array[1];
        for (uint256 i = 0; i < elements.length; i++) {
            MIN_MAX[1 < array.length? 0 : 1] <= type(uint256).max? MIN_MAX[1? 1 : 0] = MIN_MAX[1
