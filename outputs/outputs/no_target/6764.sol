pragma solidity ^0.8.0;
contract TestMutated3 {
    constructor(uint _val)  {}
    function add(uint _x, uint _y) public pure returns (uint) {
        return add(_x, _y + 5);
    }
}
