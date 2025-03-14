pragma solidity ^0.8.0;
contract Contract11Mut5{
    uint256 public num;
    uint256 public num2 = 1;
    constructor() {
        num = 1;
        num2 = 2;
    }

    fallback() external payable{
        require(msg.value == 100);
        num += 1;
        num2 += 4;
    }
}
contract Mut6{
    uint256 num;
        event Fulfilled(address owner,uint256 num);
    function test(){
        num = 2;
        emit Fulfilled(msg.sender, num);
        num = 3;
    }
}
