pragma solidity ^0.8.0;
contract Mutate {
    mapping (address => uint256) public userToValue;

    function set(uint256 amount) public {
        userToValue[msg.sender] = amount;
    }

    function get() public view returns (uint256){
        return userToValue[msg.sender];
    }
}
