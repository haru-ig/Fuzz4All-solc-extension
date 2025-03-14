pragma solidity ^0.8.0;
contract Example{
    bytes32 constant SAFETY = keccak256("hello world");


    mapping(address => bytes32) public checkFor;

    function setCheckFor(address c, bytes32 b) public {
        require(hasPassed(b));
        checkFor[c] = b;
    }
    function isValid() public view returns(bool) {
        if (address(this).balance == 0) {
            return false;
        }
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed(bytes32 b) public view returns (bool) {

        if (b == SAFETY) return true;
        else return false;
    }
}
