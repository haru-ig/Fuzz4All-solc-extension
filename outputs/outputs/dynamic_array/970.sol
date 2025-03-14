pragma solidity ^0.8.0;
import "./EqualityTest.sol";
import "./LotteryWithEquivalence.sol";
contract LotteryWithEquivalence2 is EqualityTest{
    LotteryWithEquivalence lotteryInstance;
    constructor(address lotteryAddress) public {
        lotteryInstance = LotteryWithEquivalence(lotteryAddress);
    }

    function getEquality() public view returns(LotteryWithEquivalence){
        return lotteryInstance;
    }
}
