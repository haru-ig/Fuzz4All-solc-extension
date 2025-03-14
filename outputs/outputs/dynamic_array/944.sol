pragma solidity ^0.8.0;

contract Lottery {
    mapping (address => uint) internal lotteries;


    function getLottery(address addy) internal view returns (uint){

        return lotteries[addy];
    }

    function setLottery(address addy) public {
        lotteries[addy] += 1;
    }
}
