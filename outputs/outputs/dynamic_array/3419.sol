pragma solidity ^0.8.0;
contract C {
    uint[] public array;
    uint public v;
    constructor() {
        array.push(1);
        v=2;
    }
    uint x;
    function test() public returns (uint) {
        x = array.pop();
        return v;
    }
}
