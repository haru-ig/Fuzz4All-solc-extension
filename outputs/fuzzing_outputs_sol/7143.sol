pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public onlyMe{
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        bytes32 _pre = checkFor[msg.sender];
        checkFor[c] = (_pre == SAFETY)? SAFETY : SAFETY ^ keccak256("hello world");
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256("hello world");
    }
    function hasPassed() public view returns (bool) {
        bytes32 _checkFor = getCheckFor();
        if (_checkFor == SAFETY) {
            return true;
        }
        return (checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256("hello world")) && uint256(address(this).balance) >= 0x10;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
