pragma solidity ^0.8.0;
interface IExample3 {
    function checkFor() external view returns(bytes32);
    function setCheckFor(address c) external;
    function isValid() external view returns(bool);
    function isValid2() external view returns(bool);
    function isValid3() external view returns(bool);
    function hasPassed() external view returns(bool);
    function isValidAny() public view returns(bool);
    function hasPassedAny() public view returns(bool);
}
contract Example3 is IExample3{
    address payable addr;
    modifier onlyMe() { if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public onlyMe{
        bytes32 _checkFor = getCheckFor();
        bytes32 _pre = checkFor[msg.sender];
        require(hasPassed());
        checkFor[c] = (_checkFor < _pre) || (_checkFor == SAFETY && _pre == SAFETY)? _checkFor : SAFETY ^ keccak256("hello world");
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender]   == SAFETY || checkFor[msg.sender] == SAFETY ^ keccak256("hello world");
    }
    function isValid2() public view returns(bool)
