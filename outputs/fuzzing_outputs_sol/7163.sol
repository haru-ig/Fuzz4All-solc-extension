pragma solidity ^0.8.0;

contract FallbackExample is IExample2{
    bytes32 constant SAFETY = keccak256("hello world");
    address payable addr;
    function FallbackExample() public{
        addr = payable(msg.sender);
    }
    modifier onlyMe(){
        require(msg.sender!= addr);
        _;
    }
    modifier onlySelf(){
        require(msg.sender == addr);
        _;
    }
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
        return (checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256("hello
