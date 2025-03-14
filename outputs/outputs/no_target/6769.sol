pragma solidity ^0.8.0;
contract TestMutated4 {
    constructor(uint _val)  {}
    function add(uint _x, uint _y) public pure returns (uint) {
        return add(_x, uint10(uint16(uint(_y + 5))));
    }
}
