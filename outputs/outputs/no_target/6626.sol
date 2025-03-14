pragma solidity ^0.8.0;
contract SimpleStore8 {
    uint8 data;
    constructor(uint8 d) {
        data = d;
    }
    function f() public view returns (uint8) {
        return data;
    }
}
