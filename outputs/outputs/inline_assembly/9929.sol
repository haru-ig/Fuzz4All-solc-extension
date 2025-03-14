pragma solidity ^0.8.0;
contract C {
    uint256 public value2;
    uint256 public value3;
    constructor() {
        value = 20;
        value2 = value/2;
        value3 =  value2 -(value/2);
    }
}
pragma solidity 0.8.5;
interface I {}
contract C {
    uint256 public value;
    uint256 public value2;
    uint256 public value3;
    constructor() {
        I(address(0)).balance;
    }
    function test(uint256 v) public {
        uint256 x = 6;
        value = v;
        value2 = value;
        value = x;
    }
}
