pragma solidity ^0.8.0;
contract MultiGenerator_5 {
    uint constant minValue = 0;
    uint constant decrement = 1;
    uint constant maxValue = 99;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum2) {
        sum2 = num1 * decrement + 6*maxValue;
        return sum2;
    }
    receive() external payable {}
}
