pragma solidity ^0.8.0;
interface IPiggy {
    function isDead() public pure returns (uint256);
    function setName(string calldata s) public;
    function getAge() public view returns (uint256);
}
contract Example is IPiggy {
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello piggy");
    mapping(address => bytes32) public checkFor;
    modifier onlyMe(){if (msg.sender == addr) _; }
    function setName(string calldata s) public {
        checkFor[msg.sender] = SAFETY;

        require(s.length > 0);
    }
    function isDead() public pure returns(uint256) {
        require(checkFor[msg.sender] == SAFETY && uint256(address(this).balance) >= 0x1000);
        return 0;
    }
    function getAge() public view returns (uint256) {
        return 0;
    }
}
