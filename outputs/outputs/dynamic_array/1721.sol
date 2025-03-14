pragma solidity ^0.8.0;
contract MutatedDynamicArrays16 {
    uint256[] public elements;
    uint256 constant numElements = 14;
    constructor() public {
        elements = [400, 200, 400, 100, 130, 50, 400, 650, 150, 300, 400, 400, 700, 150, 100, 900, 150, 100, 120];
    }
    function use() public {
        elements = [140, 500, 100, 80, 150, 400, 210, 300, 700, 90, 400, 400, 30, 80, 140, 300, 100, 50, 230];
    }
}
contract MutatedDynamicArrays17 {
    uint256[] public elements;
    uint256 constant numElements = 14;
    constructor() public {
        elements = [140, 500, 100, 80, 150, 400, 210, 300, 700, 90, 400, 400, 30, 80, 140, 300, 100, 50, 230]; /* This contract was originally created by <NAME> on the 6th of June 17; it
