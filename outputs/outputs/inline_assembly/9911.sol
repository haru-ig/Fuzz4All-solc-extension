pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    constructor() {
        value = 15;
    }
    function getZero() public pure returns(uint256){
        return 0;
    }
}
