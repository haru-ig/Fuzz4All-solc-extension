pragma solidity ^0.8.0;
contract Counter {
    uint256 counter;
    constructor() {
        counter = 0;
    }
    function get() public view returns (uint256) {
        return counter;
    }
    function set(uint256 value) public {
        counter = value;
    }
    function inc() public {
        set(get() + 1);
    }
}
