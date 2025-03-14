pragma solidity ^0.8.0;
contract Contract19Mut{
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
contract Contract19N{
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
