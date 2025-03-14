pragma solidity ^0.8.0;
contract TestMutated4 {
    constructor(uint _x)  {}
    function add(uint _x, uint _y) public pure returns (uint) {
        return add(_x, _y.add(5));
    }
}
