pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint256 x;
    constructor(uint256 x_) {
        x = x_;
    }
    function getMax(ExampleStruct12 s) public view returns (uint256) {
        return x > s.x? x : s.x;
    }
}
