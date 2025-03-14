pragma solidity ^0.8.0;
contract Caller2 {
    address public owner;
    uint8 public data;
    function initialize() public {
        owner = msg.sender;
        data = 0;
    }
    function setData(uint8 _data) public returns (uint8) {
        require(msg.sender == owner || msg.sender == msg.sender.call{value: 2 ether}(), "Only the creators can call this");
        data = _data;
        return data;
    }
    function getData() public view returns (uint8);
}
