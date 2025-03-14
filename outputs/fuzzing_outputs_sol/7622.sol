pragma solidity ^0.8.0;
contract Modification
{
    address public owner;
    uint8 public constant version = 3;
    fallback();

    function initialize(uint8 initialVersion) public initializer {
        owner = msg.sender;
        owner.call{value: 1 ether}("");
    }

    function changeVersion() public onlyOwner {
        version++;
        owner.call{value: 1 ether}("");
    }
}
