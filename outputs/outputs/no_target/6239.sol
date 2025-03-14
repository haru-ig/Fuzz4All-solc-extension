pragma solidity ^0.8.0;
contract MultiGenerator_5 {
    uint constant minValue = 0;
    uint constant decrement = 1;
    uint constant maxValue = 99;
    function generateMultiple(uint num1, uint num2) public pure returns(uint numSum3) {
        numSum3 = num1*decrement + num2;
        return numSum3;
    }
    receive() external payable {}
}
