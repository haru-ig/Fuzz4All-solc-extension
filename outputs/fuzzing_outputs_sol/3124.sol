pragma solidity ^0.8.0;
contract Contract15 {
    event Fulfilled(address indexed from, uint256 indexed value);
    uint256 public num;
    function() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
