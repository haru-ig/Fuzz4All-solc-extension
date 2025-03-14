pragma solidity ^0.8.0;
contract C {
    uint8 value;
    function test() public returns (uint256 x){
        value = 32;
        value *= 1600000000000000000000000000;
        x = value / 108;
        return value;
    }
}
