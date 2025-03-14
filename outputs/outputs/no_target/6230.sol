pragma solidity ^0.8.0;
contract MultiGenerator_4 {
    uint constant minValue = 0;
    uint constant decrement_n2 = 1;
    uint constant maxValue = 42;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = (num1 * decrement_n2) + num2;
        return sum;
    }
    receive() external payable {}
}
