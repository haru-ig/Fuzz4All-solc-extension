pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(bytes32 c) external;
    function isValid() external view returns (bool);
    function hasPassed() external view returns (bool);
}
contract Example is IExample{
    bytes32 constant SAFETY = keccak256("hello world");
    bytes32 public checkFor;
    modifier onlyMe(){if (msg.sender == addr) _; }
    function setCheckFor(bytes32 c) public onlyMe {
        require(hasPassed());
        checkFor = c;
    }
    function isValid() public view returns(bool) {
        return checkFor == SAFETY;
    }
    function hasPassed() public view returns (bool) {
        if (uint256(address(this).balance) >= 0x1000) {
            return true;
        }
        return false;
    }
}
