pragma solidity ^0.8.0;
contract MutatedExamples {
function run() public pure {
    uint256 x = 100;
    uint256 y = x + 1;
    x = 1;
    x = 10;
    x = 1;
    x = x - 2;
}
}
