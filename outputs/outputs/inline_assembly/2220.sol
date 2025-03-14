pragma solidity ^0.8.0;
contract AnotherDifferent
{
    uint d;
    constructor() { d = 43; }
     function doItWithOldSemanticDiff() public returns (uint) {
     return 12 * d;
    }
}
