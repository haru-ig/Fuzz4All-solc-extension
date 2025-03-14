pragma solidity ^0.8.0;
contract Contract15Mut{
    event Fulfilled(address owner, uint256 indexed value, uint256 index);
    struct Contract15MutData {
        uint256 value;
    }
    mapping(address => mapping(uint256 => Contract15MutData)) public data;
    function getValue(uint256 index) public view returns(uint256) {
        return data[msg.sender][index].value;
    }
    function setNumber(uint256 index, uint256 value) public {
        data[msg.sender][index].value = value;
        emit Fulfilled(msg.sender, index, value);
    }
}
