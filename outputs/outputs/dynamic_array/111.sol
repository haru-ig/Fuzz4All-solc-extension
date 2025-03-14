pragma solidity ^0.8.0;

contract C {
    mapping(address => mapping(uint256 => uint256)) storage counter;
    constructor () {
        counter[address(this)][0] = 0;
    }
}
