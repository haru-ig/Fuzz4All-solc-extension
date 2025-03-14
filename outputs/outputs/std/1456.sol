pragma solidity ^0.8.0;
contract Mutate {
    uint constant M = 10;
    uint[] public _testNums = new uint[](M);
    function mutateNums() public {
        uint added = uint(nums1[nums1.length-1] + 1);
        nums1.push(added);
    }
}
