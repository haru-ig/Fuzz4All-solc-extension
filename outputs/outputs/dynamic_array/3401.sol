pragma solidity ^0.8.0;
contract B {
    mapping(uint256 => string) map;
    mapping(uint256 => uint) map2;
    mapping(uint256 => string[]) nested;
    constructor() {
        map[5] = "five";
        map2[6] = 2;
        nested[3][4] = "3";
    }
}
