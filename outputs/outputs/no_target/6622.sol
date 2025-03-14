pragma solidity ^0.8.0;
contract SimpleStore {
    uint public data;
    constructor(uint d) {
        data = d;
    }
    function f() public pure returns (uint) {
        return data;
    }
}
