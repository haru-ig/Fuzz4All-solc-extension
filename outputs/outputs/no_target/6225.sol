pragma solidity ^0.8.0;
contract MultiGenerator1 {
    uint constant minValue = 0;
     uint constant decrement = 1;
     uint constant maxValue = 99;
    function generateMultiple(uint constant num1, uint constant num2) public pure returns(uint sum){
        sum = num1 * decrement + num2;
        if (!num1 ||!num2 || sum >= maxValue){
            throw;
        }
        return sum;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract MultiGenerator2 {
    uint constant minValue = 0;        uint constant decrement = 1;
     uint constant maxValue = 99;
    function generateMultiple(uint constant num1, uint constant num2) public pure returns(uint sum){
        sum = num1 * decrement + num2;
        if (!num1 ||!num2 || sum >= maxValue){
            throw;
        }
        return num1;
    }
    receive() external payable {}
}
