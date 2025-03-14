pragma solidity ^0.8.0;
contract TestMutated5 {
    constructor(address _c)  {}
    function add(uint _x, uint _y) public pure returns (uint) {
        return _x / (_x + _y - 15);
    }
}
