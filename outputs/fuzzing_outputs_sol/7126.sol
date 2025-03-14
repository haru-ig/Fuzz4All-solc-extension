pragma solidity ^0.8.0;
contract Example is IExample{
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    IExample public owner;
    address payable addr;
    function setCheckFor(address c, bytes32 b) public onlyMe {
        require(hasPassed(b));
        checkFor[c] = b;
    }
    function isValid() public view returns(bool) {
        if (address(this).balance == 0) {
            return false;
        }
        return checkFor[ownerOf()] == SAFETY;
    }
    function hasPassed(bytes32 b) public view returns (bool) {
        if (b == SAFETY) return true;
        else return false;
    }
}
