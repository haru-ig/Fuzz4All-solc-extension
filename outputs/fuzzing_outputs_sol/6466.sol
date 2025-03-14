pragma solidity ^0.8.0;
contract Caller {
    function getX() public view returns (uint) {
        return 79;
    }
    function getY(uint) public returns (uint) {
        return getX() + 1;
    }
}
