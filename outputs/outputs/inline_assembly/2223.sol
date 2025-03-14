pragma solidity ^0.8.0;
contract NotSemanticDifferent
{
    uint d;
    constructor() { d = 43;
    }
     function doItWithOldSemanticVersion() public returns (uint) {
     return +d + 12;
    }
}
