pragma solidity ^0.8.0;
contract SimpleStorage {
function publicReadFunction() public pure returns (uint) {return 0x1111111111111111;}
function onlyInternalReadFunction() internal pure returns (uint) {return 0x2222222222222222;}
function externalReadFunction() external pure returns (uint) {return 0x3333333333333332;}
}
