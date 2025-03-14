pragma solidity ^0.8.0;
contract Test26 {
    string[] private stringArrayContract;
    string[] public stringArray;
    mapping (uint256 => uint256) public map;
    function f(uint256 x, uint256 y) public {
        stringArrayContract = stringArrayContract;
        stringArray = stringArray;
        map[x] = x;
    }
}
