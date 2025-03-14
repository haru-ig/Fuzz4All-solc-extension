pragma solidity ^0.8.0;
import './MultiGenerator_3.sol';
contract MultiGenerator2_1 is MultiGenerator_3 {
    function multipleTest(uint num1, uint num2) public returns(uint) {
        uint sum = generateMultiple(num1, num2);
        return sum;
    }
    receive() external payable {}
}
