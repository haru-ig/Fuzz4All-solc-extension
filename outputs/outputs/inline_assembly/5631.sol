pragma solidity ^0.8.0;
contract ConstantAccessBlock7Mutator3 {
    uint constant x = 1;
    uint constant y = 2;
    constructor(){
    }
    function test() external returns (uint) {
        return x + y;
    }
}
