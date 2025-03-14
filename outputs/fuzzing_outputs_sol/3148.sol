pragma solidity ^0.8.0;
contract Contract7N{
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
contract Contract8Mut{
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
contract Contract9Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function testRevert(uint _amount) public pure {
        (bool, ) = payable(msg.sender).call{value:_amount}("");
    }
    fallback() external {
        testRevert(_amount);
    }
}
