pragma solidity ^0.8.0;
contract Example8Mutated {
    uint256 private x = 0;
    uint256 private y = -5;
    function add(uint256 x_, uint256 y_) public pure returns (uint256) {
        x_ += 1;
        return x_-y_;
    }
    function subtract(uint256 x_, uint256 y_) internal pure returns (uint256) {
        y_ -= 1;
        return x_-y_;
    }
    function plus(uint256 x_, uint256 y_) public pure returns (uint256) {
        return x_ + y_;
    }
    function minus(uint256 x_, uint256 y_) internal pure returns (uint256) {
        return x_ - y_;
    }
    function _fallback(uint _value, bytes memory _data) public payable {

        x -= Example8Mutated.subtract(_value, Example8Mutated.add(1 _value, y));
    }
}
