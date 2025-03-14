pragma solidity ^0.8.0;
contract c {
    mapping(uint => uint) map = [2 => 3];
    mapping(uint => uint) map2;
    constructor() {
        delete map2[3];
    }
    function f() internal pure returns (uint) {
        return map2[2] + map[3];
    }
    function g() internal pure returns (uint) {
        return map[0] / map2[3];
    }
    function h() internal pure returns (uint) {
        return map[ map[0] + map2[3] ];
    }
    function i() internal pure returns (uint) {
        return map[ 1 + map[2] ];
    }
    function j() internal pure returns (uint) {
        return map[ map[ map[0] + map2[3] ] ];
    }
}
