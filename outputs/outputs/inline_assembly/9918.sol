pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() {
        value = 3;
    }
    function test() public returns (uint256 x){
        uint256 r = 10;
        return (uint256(uint256(r -3) + value));
    }
}
