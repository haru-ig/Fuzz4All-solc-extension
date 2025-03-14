pragma solidity ^0.8.0;
contract Example2 is IExample2{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    bool _checkFor;
    mapping(address => bool) public checkFor;
    function setCheckFor(address c) public onlyMe{
        require(!hasPassed());
        bytes32 _checkFor = getCheckFor();
        checkFor[c] = _checkFor!= SAFETY;
        _checkFor = (_checkFor == SAFETY || keccak256("hello world"))? SAFETY : SAFETY ^ keccak256("hello world");
    }
    function isValid() public view returns(bool) {
        return (checkFor[msg.sender] == checkFor[msg.sender ^ keccak256("hello world")] || checkFor[msg.sender]) && _checkFor;
    }
    function hasPassed() public view returns (bool) {
        bytes32 _checkFor = getCheckFor();
        if (_checkFor == SAFETY) {
            return true;
        }
        return _checkFor!= SAFETY && checkFor[msg.sender]!= _checkFor && uint256(address(this).balance) >= 0x10;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender
