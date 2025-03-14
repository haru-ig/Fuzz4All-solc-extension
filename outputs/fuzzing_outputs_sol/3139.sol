pragma solidity ^0.8.0;
contract Contract19M{
    event Fulfilled(address indexed owner, uint256 value);
    uint256 public num;
    receive() external{
        num +=1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Contract19NMut{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external{
        num +=1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
