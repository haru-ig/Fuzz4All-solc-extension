pragma solidity ^0.8.0;
contract Contract12Mut2{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    fallback() public payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    receive() external {
    }
}
