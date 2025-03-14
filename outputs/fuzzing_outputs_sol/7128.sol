pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c) external;
    function isValid() external view returns (bool);
    function hasPassed() external view returns (bool);
}
contract Example is IExample{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public onlyMe{
        require(hasPassed());
        checkFor[c] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed() public view returns (bool) {
        if (uint256(address(this).balance) >= 0x1000) {
            return true;
        }
        return false;
    }
}
