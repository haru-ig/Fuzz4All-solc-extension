pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 43;
    uint256 private x = INITIAL_X;
    event XSet(uint z);
    function setX(uint y) public {
        x = x + y;
        emit XSet(x);
    }
    function getX() public view returns (uint256) {
        uint256 z = x;
        return z;
    }
}
