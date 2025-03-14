pragma solidity ^0.8.0;
contract CallerMut{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract CallerN{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Not {
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
