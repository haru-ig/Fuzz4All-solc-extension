pragma solidity ^0.8.0;


contract Contract10{
    event Fulfilled(address owner, uint indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Contract15NMut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
    return num;
    }
}
