pragma solidity ^0.8.0;
contract Contract20Mut{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, -num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
function f(uint256 x) public pure {
    require(x > 0);
    x = x + 5;
}
contract Contract20N{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable
    {
        uint256 newNum = num - x;
        num = newNum > 0? newNum : 0;
        if(num == 0){
            msg.sender.transfer(x);
        }
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        require(msg.value > 0);
        return num - msg.value + x;
    }
}
