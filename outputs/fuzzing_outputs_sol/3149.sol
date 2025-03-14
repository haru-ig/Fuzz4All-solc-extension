pragma solidity ^0.8.0;
contract Contract8Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    fallback() payable external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract9Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
contract Contract10Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public view returns(uint) {
        return num;
    }
    receive() external external {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
}
