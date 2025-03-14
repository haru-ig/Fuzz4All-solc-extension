pragma solidity ^0.8.0;
contract Mutated {

    uint256 constant INITIAL_X = 42;
    uint256 private x = INITIAL_X;

    event XSet(uint y);

    function setX(uint y) public {
        x = INITIAL_X + y;
        emit XSet(x);
    }

    function getX() public view returns (uint256) {
    }
}
