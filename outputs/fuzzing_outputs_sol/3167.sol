pragma solidity ^0.8.0;
contract Contract12Mut3{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function add() public pure returns(uint256) {
        num = 1;
        return num;
    }
    fallback() external {
    num = 2;
    emit Fulfilled(msg.sender, num);
    }
}
