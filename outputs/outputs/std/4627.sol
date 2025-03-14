pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = INITIAL_X;
    uint256 private x = INITIAL_X;
    event XSet(uint256 z);
    modifier modify(uint256 x) { x += x; emit XSet(x); _; }
    function setX(uint256 y) public modify(1234) {
        x += y;
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}
