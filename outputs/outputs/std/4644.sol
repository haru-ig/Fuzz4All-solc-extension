pragma solidity ^0.8.0;
contract Mutated {

    uint private constant IMMUTABLE_X = 2;
    uint256 private x = IMMUTABLE_X;

    function setX(uint256 _x) public {
        x = _x;
    }

    function setXAfter() public {

        x = INITIAL_X;
    }
}
