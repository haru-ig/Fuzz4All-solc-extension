pragma solidity ^0.8.0;
interface IExample3 {
    function getCheckFor() external view returns(bytes32);
    function isValid() external view returns(bool);
    function setCheckFor(address c) public;
}
contract Example3 is IExample3{
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256("hello world");
    }
    function setCheckFor(address c) public {
        bytes32 _checkFor = getCheckFor();
        bytes32 _pre = checkFor[msg.sender];
        checkFor[c] = (_pre == SAFETY)? SAFETY : SAFETY ^ keccak256("hello world");
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
