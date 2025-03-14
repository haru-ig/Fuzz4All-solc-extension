pragma solidity ^0.8.0;
import "./EquivalentNew.sol";
contract UsingNew {
    address public myAddress;

    constructor() {
        myAddress = msg.sender;
        x[msg.sender] = new uint256[](3);
        x[msg.sender].length = 1;
    }

    function getArray(uint256[] memory) public { }

    function getArrayLength() public view returns (uint256) { }

    function setArray(uint256[] memory x) public { }
}
