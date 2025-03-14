pragma solidity ^0.8.0;

contract A {
    mapping(uint256 => string) map;
    mapping(uint256 => uint) map2;
    mapping(uint256 => string[]) nested;

    constructor() {
        map[1] = "one";
        map2[3] = 5;
        nested[6][7] = "9";
    }
}
