pragma solidity ^0.8.0;
contract MultiGeneratorModded{
    uint constant minValue = 0;
     uint constant increment = 1;
     uint constant maxValue = 99;
    function generateMultipleModified(uint num1) public pure returns(uint sum){
        sum = num1 * ( num1-1 );
        return sum;
    }
     function generateMultipleModified(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 * num2 - ( num1 -1 ) * ( num2 - 1 );
        return sum;
    }
}
