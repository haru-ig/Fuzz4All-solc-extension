pragma solidity ^0.8.0;
contract SimpleStore7 {
    uint256 data;
    constructor(uint256 x) {
        data = x;
    }
    function f() public view returns (uint256) {
        return data;
    }
}
