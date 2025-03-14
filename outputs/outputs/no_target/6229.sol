pragma solidity ^0.8.0;
contract MultiGenerator_4 {
    uint constant minValue = 0;
    uint constant decrement = 1;
    uint constant maxValue = 99;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 * decrement + num2;
        return sum;
    }
    receive() external payable {}
}
