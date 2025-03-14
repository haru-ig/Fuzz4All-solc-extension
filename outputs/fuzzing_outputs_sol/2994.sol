pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal immutable _balance1;
    uint256 internal immutable _balance2;
    constructor(uint256 initialBalance1_, uint256 initialBalance2_) {
        _balance1 = initialBalance1_;
        _balance2 = initialBalance2_;
    }
    function increase1(uint256 value) public {
        _balance1 += value;
    }
    function increase2(uint256 value) public {
        _balance2 += value;
    }
}
