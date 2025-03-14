pragma solidity ^0.8.0;
contract SimpleStore8 {
    uint256 data;
    constructor(uint256) { data = 0; }
    function f() public view returns (uint256) {
        return data;
    }
}
