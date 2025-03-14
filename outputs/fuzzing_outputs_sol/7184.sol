pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2 {
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
