pragma solidity ^0.8.0;
contract VersionOfOlderMutated
{
    uint immutable d = 42;
    uint public x = 43;
    mapping (uint => uint) mapping (uint => uint) public counter;
    mapping (uint => uint) public data;
    constructor() { data[x] = 45; }
     function doItWithOldMutatedSematicVersion() public returns (uint) {

    data[x] = 45;
    return 12 * 2 * counter[(counter[43] + 12) / 10];
    }
}
