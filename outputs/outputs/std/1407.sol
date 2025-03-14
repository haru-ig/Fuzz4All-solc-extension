pragma solidity ^0.8.0;
contract Mutate {
    uint constant M = 13;
    uint nums[] = new uint[](M);
    function newArray() public {
        nums[0] = 123;
    }
    function mutated() public {
        uint a = 11;
        uint b = 12;
        nums[1] = b;
        nums[2] = a;
        nums[5] = nums[3] + nums[2];
        nums[6] = b + 2 * a;
        nums[10] = add(nums[6], nums[5]);
    }
    function add(uint x, uint y) pure public returns (uint z) {
        z = x + y;
    }
}
