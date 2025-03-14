pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{
    uint x;
    mapping(address => uint) public balances;
    mapping(address => bytes32) public checkFor;
    mapping(address => string) msg;
    bytes32 constant SAFETY = keccak256("hello world");
    function setCheckFor(address c) public {
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        bytes32 _pre = checkFor[msg.sender];
        checkFor[c] = (_pre == SAFETY)? SAFETY : SAFETY ^ keccak256(_checkFor);
    }
    function isValid() public view returns (bool) {
        return checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256(_checkFor);
    }
    function hasPassed() public view returns (bool) {
        bytes32 _checkFor = getCheckFor();
        if (_checkFor == SAFETY) {
            return true;
        }
        return (checkFor[msg.sender] == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256(_checkFor)) && uint25
