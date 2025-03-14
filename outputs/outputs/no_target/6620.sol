pragma solidity ^0.8.0;
contract SimpleStore8 {
    uint public data;
    constructor(uint d) {
        data = d;
    }
    function f() public view returns (uint) {
        return data;
    }
}
