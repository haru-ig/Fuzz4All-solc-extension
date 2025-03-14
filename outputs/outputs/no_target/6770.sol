pragma solidity ^0.8.0;
contract TestMutated4 {
    constructor(address _c)  {}
    function add(uint _x, uint _y) public pure returns (uint) {
        return add(_x + 10, 6 * 10 - 6 * 13);
    }
}
