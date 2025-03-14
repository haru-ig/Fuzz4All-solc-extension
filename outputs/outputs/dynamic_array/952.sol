pragma solidity ^0.8.0;
contract LotteryWithConstructorCalls2 {
    mapping(address => uint) internal lotteries;
    uint private start = 0;
    modifier isFirst() {

        require(address(msg.sender) == lotteries[address(this)]);
        _;
    }
    constructor(uint _start) public {
        start = _start;
    }
    function setLottery(address addy) public {
        lotteries[addy] += 1;
    }
    function setFirstToLottery(address addy) public onlyFirst isFirst {
        lotteries[addy] += start;
    }
}
