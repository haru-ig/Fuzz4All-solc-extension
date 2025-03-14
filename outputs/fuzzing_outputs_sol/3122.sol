pragma solidity ^0.8.0;
contract Contract15Call{
    event Fulfilled(uint indexed value);
    uint256 public num;
    function fallback() external payable{
        num += 1;
        emit Fulfilled(num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
