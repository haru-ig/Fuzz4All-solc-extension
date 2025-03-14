pragma solidity ^0.8.0;
interface IExample3 {
    function setData(bytes32 d) external payable;
    function getData() external view returns(bytes32);
}
contract Example3 is IExample3 {
    bytes32 constant DATA1 = keccak256("data1");
    bytes32 constant DATA2 = keccak256("data2");
    uint public data;
    mapping(address => bytes32) public checkFor;
    modifier onlyMe(){if (msg.sender == addr) _; }
    function setData(bytes32 d) public payable onlyMe{
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        require(hasPassed());
        bytes32 _pre1 = checkFor[msg.sender];
        bytes32 _pre2 = checkFor[msg.sender];
        data = d;
        checkFor[msg.sender] = (_pre1 == DATA1)? DATA1 : DATA1^keccak256("hello world");
        checkFor[msg.sender] = (_pre2 == DATA2)? DATA2 : DATA2^keccak256("hello world");
    }
    function getData() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
    function hasPassed() view returns (bool) {
        bytes32 _pre = checkFor[msg.sender];
        if (_pre == DATA1) {
            return true;
        }
        if (_pre == DATA2)
