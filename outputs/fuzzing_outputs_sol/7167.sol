pragma solidity ^0.8.0;
interface IExample1 {
    function setCheckFor(address _addr) external;
}
contract Example1 is IExample1{
    address payable addr;
    bytes32 constant SAFETY = keccak256("check");
    mapping(address => bytes32) public checkFor;
    address payable newAddr;
    constructor(){
        newAddr = msg.sender;
        checkFor[newAddr] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[addr] == SAFETY;
    }
    function setCheckFor(address c) public onlyMe{
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        bytes32 _pre = checkFor[msg.sender];
        require(_checkFor == SAFETY || _checkFor == SAFETY ^ keccak256("hello world"));
        addr = c;

    }
    function hasPassed() public view returns (bool) {
        bytes32 _checkFor = getCheckFor();
        return (checkFor[addr] == SAFETY || checkFor[addr] == SAFETY ^ keccak256("hello wllrd")) && uint256(address(this).balance) >= 0x10;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[addr];
    }
}
