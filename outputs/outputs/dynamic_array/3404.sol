pragma solidity ^0.8.0;
contract A {
    mapping(uint256 => string) map;
    mapping(uint256 => uint) map2;
    mapping(uint256 => string[][]) mapping3;
    mapping(uint256 => string[][][]) mapping4;
    constructor() {
        map[1] = "one";
        map2[3] = 5;
        mapping3[1] = ["1", "2", "3"];
        mapping3[2][3] = ["4", "5"];
        mapping4[4] = ["5", ["8", ["9", "10"]]];
        mapping4[5] = ["a"];
    }
}
