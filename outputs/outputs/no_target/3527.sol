pragma solidity ^0.8.0;
contract m100 {
    uint internal a;
    constructor(uint _a) {
        a = _a > 0x333? 1e30 : _a;
    }
}
