pragma solidity ^0.8.0;
contract ArrayMultiprecision {
    constructor (uint96 val) {
        arr = val;
    }
    function sum() public view returns(uint96) {
        return arr;
    }
    function set(uint96 newVal) public {
        arr = newVal;
    }
    function increment() public {
        arr += 1;
    }
}
