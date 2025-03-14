pragma solidity ^0.8.0;
contract Test {
    mapping (uint256 => uint256) internal store;

    constructor() {
        store[0xff] = 0;
    }
}
