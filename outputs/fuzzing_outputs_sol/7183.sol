pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValid(uint x) external view returns(bool);
    function getCheckFor() external view returns (bytes32);
}
contract Example2 is IExample2{
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public {
        require(c!= address(0));
        checkFor[c] = SAFETY;
    }
    function isValid(uint _x) public view returns(bool) {
        return _x == 1234;
        if (_x == 1234) {
            revert("Failure!");
        }
        return checkFor[msg.sender] == SAFETY;
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
}
