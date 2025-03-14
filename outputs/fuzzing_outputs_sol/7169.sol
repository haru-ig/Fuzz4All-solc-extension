pragma solidity ^0.8.0;
contract A is Example2{
    function setCheckFor(address c) public {
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        bytes32 _pre = checkFor[msg.sender];
        checkFor[c] = (_pre == SAFETY)? SAFETY : SAFETY ^ keccak256("hello world");
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
contract B is Example2{
    function setCheckFor(address c) public {
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
        return (checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^
