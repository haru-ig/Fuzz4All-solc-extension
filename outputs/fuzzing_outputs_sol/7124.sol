pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c, bytes32 b) external;
    function isValid() external view returns (bool);
    function hasPassed(bytes32 b) external view returns (bool);
}
contract Example is IExample{

    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }

    bytes32 constant SAFETY = keccak256("hello world");

    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c, bytes32 b) public onlyMe{
        require(hasPassed(b));
        checkFor[c] = b;
    }
    function isValid() public view returns(bool) {
        if (address(this).balance == 0) {
            return false;
        }
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed(bytes32 b) public view returns (bool) {
        if (b == SAFETY) return true;
        else return false;
    }
}
