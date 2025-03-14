pragma solidity ^0.8.0;
contract MutatedExample is IExample{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public onlyMe{
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        checkFor[c] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed() public view returns (bool) {
        bytes32 _checkFor = getCheckFor();
        if (_checkFor == SAFETY && uint256(address(this).balance) >= 0x1000) {
            checkFor[c] = checkFor[c] ^ 0xdeadbeef;
            return true;
        }
        return false;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
