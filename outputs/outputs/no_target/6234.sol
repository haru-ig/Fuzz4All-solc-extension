pragma solidity ^0.8.0;
contract MultiGenerator_4 {
    uint constant minValue = 0;
    uint constant currentValue = 800;
    uint decrement = 1;
    uint maxValue = 999;
    uint constant increment = 1;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 * decrement + num2;
        if (sum < currentValue){
            sum = uint(-1);
        }
        else{
            sum = currentValue;
            if(sum >= minValue){
                sum -= increment;
            }
            currentValue += increment;
        }
        return sum;
    }
    receive() external payable {}
}
