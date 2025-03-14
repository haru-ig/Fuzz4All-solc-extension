pragma solidity ^0.8.0;
contract Contract19 {
    event Fulfilled(address owner, uint256 value);
    uint256 public num;
    receive() payable fallback{
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
    function setNumber(uint number) public {
        num = number;
    }
}
contract Contract20 {
    event Fulfilled(uint indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
