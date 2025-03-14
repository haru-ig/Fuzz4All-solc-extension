pragma solidity ^0.8.0;
contract LotteryWithConstructorCalls {
    mapping(address => uint) internal lotteries;
    function getLottery(address addy) internal view returns (uint){
        return lotteries[addy];
    }
    constructor() public {
        lotteries[msg.sender] += 1;
    }
    function setLottery(address addy) public {
        lotteries[addy] += 1;
    }
}
