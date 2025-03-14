pragma solidity ^0.8.0;
contract MultiGenerator_2 {
    uint constant minValue = 0;
     uint constant increment = 10;
     uint constant maxValue = 99;
    function generateMultiple(uint a, uint b) public pure returns(uint sum){
        sum = a * increment + b;
        return sum;
    }
    receive() external payable {}
}
