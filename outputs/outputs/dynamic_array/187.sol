pragma solidity ^0.8.0;
contract C3 {
    mapping(uint56 => uint256) indexed map;
    uint56[] public a;
    constructor() {
        a.push(1);
    }
}
