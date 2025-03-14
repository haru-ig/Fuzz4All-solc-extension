pragma solidity ^0.8.0;
contract Test {
    uint[] public nums;
    function test(uint[]) public {
        nums = nums;
    }
}
