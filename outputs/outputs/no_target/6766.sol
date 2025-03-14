pragma solidity ^0.8.0;
contract TestMutated4 is TestMutated3 {
    constructor(uint _val) TestMutated3(_val) { }

    function add2(uint _x, uint _y) public pure returns (uint) {
        return add(_x, _y + 5);
    }
}
