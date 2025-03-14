pragma solidity ^0.8.0;
contract OverridingCopyFixed {
    uint256[] public fixedArray;
    constructor() public {
        fixedArray = new uint256[](1);
        fixedArray[0] = 0;
    }
    function addOneAndCopy(uint256 value) public {
        uint256[1][] memory tmp;
        tmp[0] = new uint256[](10 ether);
        for (uint256 i = 1; i < 10; i++) {
            tmp[0][i - 1] -= 1;
        }
        fixedArray[0] += value;
        tmp[0][10 - 1] += 1;
        for (uint256 i = 0; i < tmp[0].length; i++) {
            tmp[0][i] += value;
        }
    }
    function addOneAndCopyAndInit(uint256 value) public {
        uint256[1][] memory tmp;
        tmp[0] = new uint256[](10 ether);
        for (uint256 i = 1; i < 10; i++) {
            tmp[0][i - 1] -= 1;
        }
        fixedArray[0]
