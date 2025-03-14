pragma solidity ^0.8.0;
contract Contract11Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    fallback() external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract15N{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    fallback() external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract13Mut{
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
