pragma solidity ^0.8.0;
contract ImmutableBc5 {
    uint constant initialValue = 5;
    function test(uint val) pure public view returns (uint) {
        return val;
    }
}
