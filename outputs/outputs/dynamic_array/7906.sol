pragma solidity ^0.8.0;
contract Test27 {
    string[] private stringArrayContract;
    string[] public stringArray;
    mapping (uint256 => uint256) public map;
    function f(uint256 x, uint256 y) public {
        stringArrayContract = new string[](1);
        stringArray = stringArray;
        map[x] = mapping(uint256 => uint256)[1];
        stringArray = stringArray;
        map[x] = mapping(uint256 => uint256)[1];
        stringArray = stringArray;
        map[x] = mapping(uint256 => uint256)[1][1];
        stringArray = stringArray;
    }
}
