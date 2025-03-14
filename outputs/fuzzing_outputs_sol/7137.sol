pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c) external;
    function isValid() external view returns (bool);
    function hasPassed() external view returns (bool);
}
contract Example is IExample{
    bytes32 constant SAFETY = keccak256("hello world");
    bytes32 public checkFor;
    event Mint(bytes32 indexed hash);
    constructor (address payable _addr) {
        addr = _addr;
    }
    modifier onlyMe{if (msg.sender == addr) _; }
    function setCheckFor(address c) public onlyMe {
        require(hasPassed());
        checkFor = SAFETY;
    }
    function isValid() public view returns (bool) {
        return checkFor == SAFETY;
    }
    function hasPassed() public view returns (bool) {
        if (uint256(address(this).balance) >= 0x1000) {
            mint();
            return true;
        }
        return false;
    }
    function mint() public {
        emit Mint(checkFor);
    }
}
