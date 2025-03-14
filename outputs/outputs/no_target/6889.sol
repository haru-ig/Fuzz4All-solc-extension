pragma solidity ^0.8.0;
contract TestMutated661 is TestMutated660 {
    constructor() public {
        add(5, 6);
    }
    function add(uint x, uint y) public pure returns (uint, uint) {
        (uint, uint) = TestMutated660.add(x, y);
    }
}
